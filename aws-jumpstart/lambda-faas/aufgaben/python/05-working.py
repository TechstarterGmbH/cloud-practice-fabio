# Importieren der Libraries
import json
import os
import boto3
import time
import urllib3

# Environment Setup
API_URL = "https://api.coinstats.app/public/v1/markets?coinId=bitcoin"

CURRENT_TIME = int(time.time())

TOPIC_ARN = os.environ['SNS_TOPIC_ARN']
if TOPIC_ARN is None:
    raise Exception('SNS_TOPIC_ARN environment variable not set')

DYNAMODB_ARN = os.environ['DYNAMODB_ARN']
if DYNAMODB_ARN is None:
    raise Exception('DYNAMODB_ARN environment variable not set')

ALWAYS_SEND_SNSTOPIC = 'false'
if 'ALWAYS_SEND_SNSTOPIC' in os.environ:
    ALWAYS_SEND_SNSTOPIC = os.environ['ALWAYS_SEND_SNSTOPIC']


arn_parts = DYNAMODB_ARN.split('/')
table_name = arn_parts[len(arn_parts) - 1]
if table_name is None:
    raise Exception('DYNAMODB_ARN environment variable not set correctly')


# Fuer HTTP Request zu API
http = urllib3.PoolManager()

# Create an SNS and dynamodb client
sns = boto3.client('sns')
dynamodb = boto3.client('dynamodb')

def get_stock_price():
    response = http.request('GET', API_URL)
    data = json.loads(response.data.decode('utf-8'))

    return data[0]['pairPrice']


def save_stock_price(stock_price):
    # Write an item to the DynamoDB table
    response_put = dynamodb.put_item(
        TableName=table_name,
        Item={
            'timestamp': {'S': str(CURRENT_TIME)},
            'value': {'N': str(stock_price)},
        }
    )

    print("DynamoDB put_item response:")
    print (response_put)
    print("End DynamoDB put_item response")


def get_all_stock_prices():
    # Scan the DynamoDB table
    response_scan = dynamodb.scan(
        TableName=table_name
    )

    prices = []
    # Print the scanned items
    for item in response_scan['Items']:
        prices.append(item['value']['N'])
    return prices

def is_good_price(all_stock_prices):
    if ALWAYS_SEND_SNSTOPIC == 'true':
        return True
    if len(all_stock_prices) < 5:
        return False
    if float(all_stock_prices[0]) < float(all_stock_prices[4]):
        return True
    return False


def sns_alert(data):
    # Send a message to the SNS topic
    msg = f'Good buying opportunity: {str(data)} USD'
    response = sns.publish(
        TopicArn=TOPIC_ARN,
        Message=msg
    )


def lambda_handler(event, context):
    # TODO implement

    print('TOPIC_ARN: ' + TOPIC_ARN)
    print('DYNAMODB_ARN: ' + DYNAMODB_ARN)
    print('table_name: ' + table_name)
    success = False

    print("Getting the stock price: ")
    stock_price = get_stock_price()
    print(stock_price)
    print("Saving the stock price: ")
    save_stock_price(stock_price)
    print("Getting all stock prices: ")
    all_stock_prices = get_all_stock_prices()
    print(all_stock_prices)
    print("Checking if the price is good: ")
    if is_good_price(all_stock_prices):
        print("The price is good! sending sns alert")
        success = True
        sns_alert(stock_price)
    else:
        print("The price is bad")

    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }

