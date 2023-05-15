# Aufgabe 2

In dieser Aufgabe wirst du schrittweise ein Script entwickeln, um die Performance der Wordpress Installation zu testen.

Führe die nachfolgenden auf deinem lokalen Computer aus! 
**Reiche für jede Frage als Antwort die passende Version des Skripts ein**

## 1. HTTP Requests von der Command Line

Schicke ein HTTP Request zu deiner Wordpress URL. Welches command eignet sich hierfür besonders gut?

## 2. Basic Script

Erstelle ein neues bash Script, welches die Wordpress URL 100 mal, jeweils im Abstand von 30 sekunden aufruft

## 3. Logs

Öffne in einem neuen Terminal wieder die Verbindung zu dem Server und untersuche die Logfiles.
Wo sind die Apache Logs gespeichert? Wie findest du alle mit dem Statuscode 200?

## 4. Gleichzeitige Requests

Ergänze das Script, sodass immer 3 Requests gleichzeitig getätigt werden. 

*Tipp: Lese dir den folgenden Artike durch [https://www.aloneguid.uk/posts/2022/09/curl-stress-testing/](https://www.aloneguid.uk/posts/2022/09/curl-stress-testing/)*

## 5. Logs

Wie ist das Verhältnis von erfolgreichen(2**, 3**) zu fehlgeschlagenen Requests(4**, 5**)?

## 6. Backup

Erstelle ein Backup der MySQL Datenbank. Wie lautet das command um die `wordpress_db` in einer neuen Datei `db_backup.sql` zu speichern?
