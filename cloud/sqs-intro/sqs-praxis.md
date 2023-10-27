# Praktische Übung:

## Erstellen einer SQS-Warteschlange und Verwalten von Nachrichten in der AWS Console

## Schritt 1: Anmelden bei AWS Console

- Melde dich bei der AWS Management Console unter [https://aws.amazon.com/](https://aws.amazon.com/) an.

## Schritt 2: Navigieren zum SQS-Dienst

- Klicke in der AWS-Managementkonsole auf "Services" in der oberen Menüleiste und suche nach "Simple Queue Service" oder wähle es aus der Liste der verfügbaren Dienste aus.

## Schritt 3: Erstellen einer neuen Warteschlange

- In der SQS-Konsole wähle "Queues" in der linken Navigationsleiste aus.

## Schritt 4: Warteschlange erstellen

- Klicke auf die Schaltfläche "Create Queue", um eine neue Warteschlange zu erstellen.

## Schritt 5: Konfiguriere die Queue

- Lege die Konfiguration für die Queue fest:
    - Queue Type: Standard
    - Name: MySQSQueue
    - Default Einstellungen

## Schritt 6: Bestätigen und Erstellen der Warteschlange

- Überprüfe die Konfiguration und klicke auf "Create Queue", um die Warteschlange zu erstellen.

## Schritt 7: Zugriff auf die Queue

- Nach dem Erstellen der Queue kannst du auf die Details zugreifen, um wichtige Informationen wie die Queue-URL und andere Einstellungen anzuzeigen.

## Schritt 8: Verwalten von Nachrichten in der Warteschlange

### Schritt 8.1: Nachrichten in die Queue senden (Publishen)

- Klicke auf die Schaltfläche "Send and receive messages" oder "Send a message" in der Warteschlangenübersicht.
- Erstelle eine Nachricht, die du in die Warteschlange senden möchtest, und klicke auf "Send Message".

### Schritt 8.2: Nachrichten aus der Queue abrufen (Consumen)

- Klicke auf "Poll for messages". 
- Klicke auf die Nachricht.
- Wenn du die Nachricht erfolgreich abgerufen hast und sie nicht mehr in der Warteschlange angezeigt wird, kannst du sie löschen, indem du auf "Delete" klickst.

## Schritt 9: Lambda Function Consumer

- Erstelle eine Lambda Function mit dem Namen: "SQSLambdaFunction" und Default Settings (NodeJs 18.x)

```javascript
export const handler = async (event) => {
    console.log("SQS START: --------------");
    console.log(event);
    console.log("SQS END: --------------");
};
```

- Erstelle eine neue Policy, welche deiner Lambda Execution Role vollen Zugriff auf SQS gewährt (`sqs:*`)
- In der erstellten SQS Queue "MySQSQueue", klicke auf den "Lambda Triggers" Tab und dann auf "Configure Lambda Function Trigger"
- Wähle die "SQSLambdaFunction" aus.
- Publisher eine neue Nachricht über die AWS Konsole. Wird das Event im CloudWatch Log der Lambda Funciton angezeigt?
