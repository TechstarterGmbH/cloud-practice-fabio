# Aufgabe 1: Amazon S3-Website hosting

In dieser Aufgabe werden wir eine Todo List Anwendung innerhalb kurzer Zeit mit Amazon S3 hosten. Das hat den Vorteil, dass wir komplett `Severless` agieren und somit sehr günstig für Millionen von Nutzern unsere Anwendung hosten können.

## Schritt 1: Amazon S3-Bucket erstellen

Erstelle wieder S3 Bucket mit einem eindeutigen Namen. Wähle als Region eu-central-1 aus. 
Halte dich an die Anweisungen der letzten Aufgabe (Aufgabe 2), überspringe aber die Schritte 2 und 3.

## Schritt 2: Bucket-Einstellungen konfigurieren

1. Wählen Sie den erstellten Bucket aus.
2. Klicken Sie auf "Permissions".
3. Unter "Block public access" klicke auf "Edit".
4. Entferne den Haken bei `Block all public access` und klicke auf "Save changes". Danach tippe `confirm` in das Feld und klicke auf "Save changes".
5. Klicken Sie auf "Properties".
6. Scrollen Sie nach unten zu "Static website hosting". Hier auch auf Edit klicken.
7. Enable auswählen und dann `index.html` als Indexdokumentnamen angeben.
8. Klicken Sie auf "Save changes".
9. Jetzt müsste in der Zeile "Static website hosting" ein Link angezeigt werden. Öffne diesen Link in einem neuen Tab (gerade noch ein Error)

## Schritt 3: Website-Dateien hochladen

1. Gehe auf [Github](https://github.com/themaxsandelin/todo) und downloade oder clone das Repository.
2. Uploade die Dateien aus dem Ordner `todo` in den Bucket.
3. **WICHTIG** - Stelle sicher, dass du die Dateien in den Bucket hochlädst, nicht in einen Unterordner. Die Dateien müssen im Bucket-Root-Verzeichnis liegen.
4. Wenn du die Dateien hochgeladen hast, öffne den Link aus Schritt 2 in einem neuen Tab. Wird die Website angezeigt?

## Schritt 4: Bucket Policy

Die Website wird nicht angezeigt, da der Bucket nicht öffentlich zugänglich ist. Wir müssen die Bucket-Policy ändern, um den Zugriff auf den Bucket zu erlauben.

1. Gehe zurück zu den Bucket-Einstellungen und klicke auf "Permissions".
2. Klicke auf "Bucket Policy" -> "Edit".
3. Füge folgenden Code ein und **ersetze DEIN_BUCKET_NAME mit dem Namen deines Buckets**:
4. **Beachte das `/*` am Ende von Resource!**

```json
{
  "Id": "MyBucketPolicy",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1682277883982",
      "Action": [
        "s3:GetObject",
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::DEIN_BUCKET_NAME/*",
      "Principal": "*"
    }
  ]
}
```

4. Speichere die Änderungen


## Schritt 4: Website testen

1. Kopiere den bereitgestellten Endpunkt-Link für die statische Website aus den Bucket-Einstellungen.
2. Öffne einen Webbrowser und die Endpunkt-URL ein.
3. Überprüfe, ob deine Website erfolgreich gehostet wird und korrekt angezeigt wird.

Herzlichen Glückwunsch! Sie haben erfolgreich eine statische Website mit Amazon S3 erstellt und gehostet.

