import json
import os

TOPIC_ARN = os.environ['SNS_TOPIC_ARN']
if TOPIC_ARN is None:
    raise Exception('SNS_TOPIC_ARN environment variable not set')

DYNAMODB_ARN = os.environ['DYNAMODB_ARN']
if DYNAMODB_ARN is None:
    raise Exception('DYNAMODB_ARN environment variable not set')

def lambda_handler(event, context):
    # TODO implement

    print('TOPIC_ARN: ' + TOPIC_ARN)
    print('DYNAMODB_ARN: ' + DYNAMODB_ARN)
    
    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }

