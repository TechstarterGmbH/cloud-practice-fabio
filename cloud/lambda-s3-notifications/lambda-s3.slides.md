---
class: invert
---

# Serverless: Lambda - S3 Notifications 

![](./imgs/title.png)

---

![bg](./imgs/serverless-meme1.jpg)

---

# Ziel des Tages:

Unser Ziel ist es, eine Anwendung zu erstellen, die automatisch Thumbnails generiert, wenn Dateien in einen bestimmten S3-Bucket hochgeladen werden.

---

# Serverless Computing: Lambda Function

### 1. Serverless Computing

- AWS Lambda ermöglicht die Ausführung von Code ohne die Bereitstellung und Verwaltung von virtuellen Maschinen oder Servern.
- Dies führt zu einer vereinfachten Infrastrukturverwaltung und einer optimierten Ressourcennutzung.

---

### 2. Event-Driven Computing

- Lambda-Funktionen können in Reaktion auf verschiedene Ereignisse ausgelöst werden, z. B. **S3-Uploads**, API-Aufrufe, Änderungen in Datenbanken und mehr.
- Dies ermöglicht die Entwicklung von reaktiven Anwendungen, die auf Ereignisse in Echtzeit reagieren.

### 3. Skalierbarkeit

- Lambda-Funktionen können automatisch skaliert werden, um hohe Lasten zu bewältigen.
- Man zahlt nur für die tatsächlich ausgeführten Funktionen und die benötigte Rechenzeit.

---

### 4. Unterstützte Programmiersprachen

- Lambda unterstützt eine Vielzahl von Programmiersprachen, darunter Node.js, Python, Java, C#, Go und mehr.
- Entwickler können die Programmiersprache wählen, die am besten zu ihrem Projekt passt.

---

## Verwendung von AWS Lambda

### 1. Anwendungslogik

- Lambda kann verwendet werden, um Anwendungslogik, Business-Workflows und Datenverarbeitung zu implementieren.
- Es eignet sich gut für die Entwicklung von Microservices und serverlosen Architekturen.

---

### 2. Datenverarbeitung

- Lambda-Funktionen können für die Echtzeitdatenverarbeitung, die Transformation von Daten und das Aggregieren von Informationen verwendet werden.

### 3. Integrationen

- Wir können Lambda in AWS-Dienste wie S3, SNS, DynamoDB und API Gateway integrieren, um reichhaltige Anwendungen zu erstellen.

---

## Preisgestaltung

- Die Preisgestaltung von AWS Lambda basiert auf der Anzahl der Ausführungen und der ausgeführten Rechenzeit.
- Es gibt eine kostenlose Nutzungsmenge und eine Pay-as-you-go-Preisstruktur.

---

# Wie reagieren wir auf S3 uploads?

### 1. S3-Notifications

- S3-Benachrichtigungen ermöglichen es Ihnen, auf bestimmte Ereignisse in einem S3-Bucket zu reagieren. Typische Ereignisse sind das Hochladen (PUT), Löschen (DELETE) oder Kopieren (COPY) von Objekten.

---

### 2. Ziele

- Wir können Benachrichtigungen an verschiedene AWS-Dienste oder Endpunkte senden, darunter **AWS Lambda-Funktionen**, SQS-Warteschlangen (Simple Queue Service), SNS-Themen (Simple Notification Service) und mehr.

### 3. Filter

- Mit Filtern können Sie die Benachrichtigungen auf bestimmte Objekte oder Bedingungen beschränken. Wir können beispielsweise Benachrichtigungen nur für Objekte in einem bestimmten Ordner erhalten.

---

# Szenario:

- Wir wurden von einem Social Media Startup beauftragt eine Serverless Automatisierung zu erstellen.
- Bei jedem Upload eines Nutzers soll automatisch ein Thumbnail erstellt werden!

