import json
import os
import boto3
import time


DYNAMODB_ARN = os.environ['DYNAMODB_ARN']
if DYNAMODB_ARN is None:
    raise Exception('DYNAMODB_ARN environment variable not set')

dynamodb = boto3.client('dynamodb')

arn_parts = DYNAMODB_ARN.split('/')
table_name = arn_parts[len(arn_parts) - 1]
if table_name is None:
    raise Exception('DYNAMODB_ARN environment variable not set correctly')
# Create a DynamoDB client


CURRENT_TIME = int(time.time())


def lambda_handler(event, context):
    # TODO implement

    print('table name: ' + table_name)
    

    # Write an item to the DynamoDB table
    response_put = dynamodb.put_item(
        TableName=table_name,
        Item={
            'timestamp': {'S': str(CURRENT_TIME)},
            'value': {'N': '1234'},
        }
    )

    print (response_put)

    # Scan the DynamoDB table
    response_scan = dynamodb.scan(
        TableName=table_name
    )

    # Print the scanned items
    for item in response_scan['Items']:
        print(item)

    return {
        'statusCode': 200,
        'body': json.dumps(response_scan['Items'])
    }
