# Praktische Übung: Amazon S3-Bucket erstellen und konfigurieren

In dieser Übung werden wir einen Amazon S3-Bucket erstellen und einige grundlegende Konfigurationen vornehmen.

## Schritt 1: Amazon S3-Bucket erstellen

1. Öffne die [AWS Management Console](https://aws.amazon.com/) und melde dich an.
2. Navigiere zum Amazon S3-Service.
3. Klicken Sie auf "Bucket erstellen" / "Create Bucket".
4. Gebe einen eindeutigen Bucket-Namen ein, der global eindeutig sein muss.
5. Wähle die Region aus, in der der Bucket gespeichert werden soll.
6. Klicke auf "Bucket erstellen" / "Create Bucket", um den Bucket zu erstellen.

## Schritt 2: Bucket-Einstellungen konfigurieren

1. Wähle den erstellten Bucket aus.
2. Klicken Sie auf "Eigenschaften".
3. Konfiguriere die folgenden Einstellungen:
   - **Bucket-Versionierung**: Aktivieren Sie die Versionierung, um verschiedene Versionen von Objekten im Bucket zu speichern.
   - **Bucket-Logging**: Aktivieren Sie das Bucket-Logging, um Zugriffsprotokolle für den Bucket zu erstellen.
4. Klicke auf "Speichern", um die Einstellungen zu übernehmen.

## Schritt 3: Objekte hochladen und verwalten

1. Klicke auf "Datei hinzufügen" oder ziehe Dateien in den Bucket (Drag and Drop), um Objekte hochzuladen.
2. Verwalte Objekte im Bucket, z.B. durch Umbenennen, Löschen oder Herunterladen von Objekten.
3. Teste den Zugriff auf Objekte mit den erstellten Bucket-Einstellungen, wie z.B. der Bucket-Policy oder den Objekt-Tags.


