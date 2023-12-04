# Aufgabe 2: Praxis

## 1. Dockerfile

- In dem geforkten Repo, erstelle ein Dockerfile, was folgende Angaben erfüllt:

    - Nutzt das `nginx:latest` image als Basis
    - Kopiere den build output nach /usr/share/nginx/html

## 2. Pipeline Docker Build

- Erweitere die Pipeline, sodass nach dem npm build auch ein neuer Docker container gebaut wird
- Achte darauf, dass du das neue Image mit dem Namen deines Repos tagst
