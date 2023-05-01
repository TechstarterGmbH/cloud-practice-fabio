# Aufgabe 1 - Lambda Function

## Scenario

Um einen Microservice Serverless zu betreiben, soll evaluiert werden ob AWS Lambda die richtige Technologie ist.

## Erstellung der Lambda Function

1. Melde dich bei der AWS-Console an und navigiere zu AWS Lambda.

2. Klicke auf "Funktion erstellen", um eine neue Funktion zu erstellen.

3. Lasse die Einstellung auf `Author from scratch`

4. Setze folgende Werte:

- Function Name: `my-test-function`
- Runtime: `Python 3.9`
- Architecture: `x86_64`

5. Klicke auf `Create Function`

6. Schreibe den folgenden Code für die Funktion in den Editor.

```python
import os
import json
        
def lambda_handler(event, context):
    json_region = os.environ['AWS_REGION']
    return {
        "statusCode": 200,
        "headers": {
            "Content-Type": "application/json"
        },
        "body": json.dumps({
            "Region ": json_region
        })
    }
```

7. Klicke auf `Deploy`


## Test und Monitoring

1. Klicke auf `Test`

2. Nutze folgende Einstellungen:

- Test event action: `Create new event`
- Event name: `my-test-event`
- Template: `hello-world`

3. Klicke auf `Save`

4. Klicke erneut auf `Test` und begutachte das Ergebnis


