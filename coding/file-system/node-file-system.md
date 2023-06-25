# Node Js File System


Der Zugriff auf das Dateisystem ist eine wichtige Funktionalität in Node.js, die es ermöglicht, Dateien zu lesen, zu schreiben und zu verwalten. In Node.js können Dateisystemoperationen sowohl synchron als auch asynchron durchgeführt werden. In diesem Text werden wir uns auf den synchronen Zugriff konzentrieren.

Der synchronen Zugriff bedeutet, dass eine Dateisystemoperation blockierend ist und den Codefluss unterbricht, bis die Operation abgeschlossen ist. Dies kann in bestimmten Situationen nützlich sein, z. B. wenn eine Datei vollständig gelesen oder geschrieben werden muss, bevor der Code fortgesetzt wird.

Um auf das Dateisystem synchron zuzugreifen, bietet Node.js das `fs`-Modul an. Dieses Modul enthält eine Vielzahl von Methoden, um Dateien zu öffnen, zu lesen, zu schreiben, zu löschen und andere Dateisystemoperationen durchzuführen.

Ein einfaches Beispiel für den synchronen Dateizugriff in Node.js ist das Lesen einer Datei. Hier ist ein Codebeispiel, das eine Datei synchron öffnet und den Inhalt liest:

```javascript
const fs = require('fs');

try {
    const data = fs.readFileSync('pfad/zur/datei.txt', 'utf8');
    console.log(data);
} catch (error) {
    console.error('Fehler beim Lesen der Datei:', error);
}
```

In diesem Beispiel verwenden wir die Methode readFileSync des fs-Moduls, um die Datei synchron zu öffnen und deren Inhalt zu lesen. Der erste Parameter ist der Pfad zur Datei, den du anpassen musst, um auf deine spezifische Datei zuzugreifen. Der zweite Parameter 'utf8' gibt an, dass der Dateiinhalt als Text im UTF-8-Format interpretiert werden soll.

Im nächsten Beispiel wird gezeigt, wie einfach eine neue Datei erstellt werden kann, basierend auf einer String Variable:

```javascript
const fs = require('fs');

try {
    const data = "Hallo Welt";
    fs.writeFileSync('pfad/zur/neuen/datei.txt', data);
} catch (error) {
    console.error("Fehler beim Schreiben der Datei:", error);
}
```

Eine Übersicht aller Funktionen des `fs` Pakets, schaue dir folgende Liste an. Scrolle aber bis zum Punkt Synchronous API herunter:
[https://nodejs.org/api/fs.html](https://nodejs.org/api/fs.html)
