# Aufgabe 1: JS im Browser

1. Erstelle einen neune Projekt Ordner mit folgender Struktur:
    - my-project/
        - index.html
        - script.js
        - script2.js

2. In der `inder.html` Datei, füge den Inhalt für eine Grundlegende HTML Seite ein (html-, head- und body-Tags) und erstelle einen Script Tag **im body**
    - Der Inhalt des Script Tags, soll folgenden Inhalt in der Console ausgeben, sobald die Seite aufgerufen wird: "Hallo Welt"

3. Füge nun 2 Script Tags im Head ein, die die beiden scripts (script.js und script2.js) einbinden.
    - Stelle sicher, dass die Dateien auch eingebunden werden, indem du folgende Inhalte in das jeweilige Script einfügst:
    - In `script.js` -> `console.log("Hallo von script.js");`
    - In `script2.js` -> `console.log("Hallo von script2.js");`

4. Definiere eine Variable `name` mit deinem Vornamen in `script.js`

5. Gebe die gerade erstellte Variable `name` in der Console aus, allerdings **von dem Script Tag im Body der html Seite**

6. Definiere eine neue Variable **im Body Script Tag** `fullName`, die zu der Namensvariable deinen Nachnamen hinzufügt

```javascript
const fullName = name + "Keller"
```

7. Ändere den Script Tag, der das `script2.js` einbindet so um, dass du die Variable `fullName` in der Console ausgeben kannst




