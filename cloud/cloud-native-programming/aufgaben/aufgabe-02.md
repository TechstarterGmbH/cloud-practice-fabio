# Aufgabe 2: Erste CI CD Pipeline

**Schritte:**

## Repository erstellen

- Erstellen Sie ein neues öffentliches GitHub-Repository

## Lokale React Anwendung erstellen

- Clone das Repo auf deinen lokalen PC und öffne das Verzeichnis in VS Code
- Erstelle ein neues React Projekt `npx create-react-app .`

## GitHub Actions Workflow erstellen

- In deinem GitHub-Repository erstelle ein Verzeichnis `.github/workflows`.

## YAML-Datei erstellen

- In diesem Verzeichnis erstelle eine neue YAML-Datei, z.B. `ci-cd.yaml`.

## GitHub Actions Workflow konfigurieren

- Füge folgenden Inhalt in die `ci-cd.yaml` Datei ein:

```yaml
# For more information see: https://help.github.com/actions/language-and-framework-guides/using-nodejs-with-github-actions

name: Node.js CI

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  build:

    runs-on: ubuntu-latest

    strategy:
      matrix:
        node-version: [18.x]

    steps:
    - uses: actions/checkout@v2
    - name: Use Node.js ${{ matrix.node-version }}
      uses: actions/setup-node@v1
      with:
        node-version: ${{ matrix.node-version }}
    - run: npm ci
    - run: npm run build --if-present
```

## Let's try it

- Um die Ausführung der Github Action zu testen committe und push deinen Code
```bash
git add .
git commit -m 'init commit'
git push 
```

## Tests

- Ändere den Code so ab, dass nach dem build auch alle unit tests ausgeführt werden
- Teste deine Änderungen

## Recherche

Find durch Online Recherche heraus, was in dem yaml File passiert.

1. Bei welchen Events wird die Action ausgeführt?

2. Auf welchem System läuft die Action?

3. Was macht folgende Zeile `uses: actions/checkout@v2`?

4. Was macht folgende Zeile?
```yaml
    - name: Use Node.js ${{ matrix.node-version }}
      uses: actions/setup-node@v1
      with:
        node-version: ${{ matrix.node-version }}
```
