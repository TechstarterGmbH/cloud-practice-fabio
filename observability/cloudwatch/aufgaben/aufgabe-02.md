# Aufgabe 2: Praxis

**Senden von Metriken von einem Python-Skript an AWS CloudWatch**

## Ziel:

In dieser Aufgabe wirst du lernen, wie du Metriken von einem Python-Skript an AWS CloudWatch senden kannst, um die Leistung und Verfügbarkeit deiner Anwendung zu überwachen.

Nutze als Ausgangspunkt die EC2 Instanz + Instance Rolle der Praxisaufgabe des Unterrichts

## Schritte:

1. **AWS IAM-Rolle updated:**
   - Die erstellte Instance Rolle muss um eine neue Inline Policy erweitert werden
   - Diese sollte `cloudwatch:PutMetricData`-Berechtigungen haben.

2. **Python-Bibliothek `boto3` installieren:**
   - Stelle sicher, dass du die `boto3`-Bibliothek in deiner Python-Umgebung installiert hast. Diese Bibliothek ermöglicht die Interaktion mit AWS-Diensten.

3. **Python-Skript erstellen:**
   - Schreibe ein Python-Skript, das Metriken erfasst und an CloudWatch sendet. Du kannst die `boto3`-Bibliothek verwenden, um auf CloudWatch zuzugreifen.

4. **Metriken an CloudWatch senden:**
   - Verwende die `put_metric_data`-Funktion von `boto3`, um die Metriken an CloudWatch zu senden. Achte darauf, die Metriken mit ihren Namen, Werten und optionalen Dimensionen zu versehen.

5. **Skript ausführen:**
   - Führe dein Python-Skript aus, um die Metriken an CloudWatch zu senden.

6. **Überprüfung in der AWS-Managementkonsole:**
   - Melde dich in der AWS-Managementkonsole an und überprüfe, ob die von deinem Skript gesendeten Metriken in CloudWatch sichtbar sind.

