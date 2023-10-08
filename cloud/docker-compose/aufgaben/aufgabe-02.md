# Aufgabe 2: Praxis

In dieser Aufgabe werden wir die letzte Aufgabe (von Martin) weiterführen, und die erstellte Infrastruktur auf docker-compose umziehen.

- Clone dir als Vorbereitung das folgende Repository `https://github.com/0xfabio/docker-compose-task`

## Aufgabe 1

- Das Dockerfile um diese Anwendung zu bauen wurde bereits erstellt
- Erstelle eine neue `docker-compose` Datei (im root des repos) mit einem Service für unsere api

```yaml
version: '3'

services:
  api:
```

- Ändere die Datei so ab, dass automatisch das Image der lokalen Dockerfile Datei gebaut wird und verwendet wird
- Für weitere Infos schaue hier nach [Doku](https://docs.docker.com/compose/compose-file/build/)

## Aufgabe 2

- Füge einen weiteren Datenbank Service zur docker-compose Config hinzu:
    - Name: `db`
    - Image: `mariadb:11.1.2`
- Stelle sicher, dass folgende Environment Variablen richtig definiert sind, sodass eine Kommunikation mit `app.js` funktioniert:
    - MYSQL_DATABASE=
    - MYSQL_USER=
    - MYSQL_PASSWORD=
- Erstelle ein Volume was die Daten über verschiedene restarts persistiert:
    - Nenne das Volume `db_data`
    - Erstelle ein Mapping von `db_data` zu `/var/lib/mysql`

## Aufgabe 3

- Erstelle ein Netzwerk, was von beiden Services genutzt wird:
    - Name: `app_net`
