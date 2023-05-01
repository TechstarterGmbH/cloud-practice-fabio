import json
import os
import boto3

TOPIC_ARN = os.environ['SNS_TOPIC_ARN']
if TOPIC_ARN is None:
    raise Exception('SNS_TOPIC_ARN environment variable not set')

# Create an SNS client
sns = boto3.client('sns')

def lambda_handler(event, context):
    # TODO implement

    print('TOPIC_ARN: ' + TOPIC_ARN)
    
    # Send a message to the SNS topic
    response = sns.publish(
        TopicArn=TOPIC_ARN,
        Message='Hello from Lambda!'
    )

    # Print the response
    print(response)

    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }
