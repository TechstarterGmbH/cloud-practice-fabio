# Aufgabe 2: Praxis

## 1. Dockerfile

- In dem geforkten Repo, erstelle ein Dockerfile, was folgende Angaben erfüllt:

    - Nutzt das `nginx:latest` image als Basis
    - Kopiere den build output nach /usr/share/nginx/html

## 2. Pipeline Docker Build

- Erweitere die Pipeline, sodass nach dem npm build auch ein neues Docker image gebaut wird
- Achte darauf, dass du das neue Image mit dem Namen deines Repos tagst

## 3. (Freiwillig) Deployment

- Füge eine neue Stage zur Pipeline hinzu, wo das eben gebaute image auch auf der EC2 Instanz deployed wird
- Stelle sicher, dass du dem Container einen Namen gibst und beim nächsten Ausführen wieder überschreibst
- Erstelle ein Port Mapping für Port 80:80
- Öffne den Port 80 in der AWS Security Group
