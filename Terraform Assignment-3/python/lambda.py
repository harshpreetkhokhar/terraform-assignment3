import json

def lambda_handler(event, context):
    try:
        # Check if the event is an SNS event
        if 'Records' in event and len(event['Records']) > 0 and 'Sns' in event['Records'][0]:
            # Extract the SNS message from the event
            sns_message = event['Records'][0]['Sns'].get('Message', '')

            if sns_message:
                print("Received SNS message:", sns_message)
            else:
                print("SNS message is empty")
        else:
            print("Event is not an SNS event:", event)
    except Exception as e:
        print("Error processing event:", e)
        raise e

    # Optionally, return a response
    return {
        'statusCode': 200,
        'body': json.dumps('Lambda function executed successfully')
    }
