# Aufgabe 2:

Nach der erfolgreichen Vorstellung des Prototypen, kommt der Kunde noch mit weiteren Änderungswünschen:

1. Schreibe das Setup so um, dass folgendes in der Lambda Function passiert:

    - Es wird geprüft ob das Objekt bereits im Thumbnail Bucket liegt
    - Nur wenn das Objekt dort nocht NICHT liegt, wird es erstellt
    - Stelle sicher, dass deine Lambda Execution Role alle IAM Rechte hat!

2. **Freiwillig**: Baue die erstellte Infrastruktur so um, dass die S3 Notifications an eine SQS Queue gehen und von dort aus von Lambda bearbeitet werden.

S3 Event -> SQS Queue -> Lambda Function
