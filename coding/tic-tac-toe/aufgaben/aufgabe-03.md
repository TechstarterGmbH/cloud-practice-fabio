# Aufgabe 3: Spieler 2 wird von Computer übernommen

1. Human vs. Computer
- In dieser Aufgabe geht es darum, das Spiel so umzubauen, dass Spieler 2 vom Computer übernommen wird
- Das heißt, das nach jedem Zug von dem Spieler auch automatisch ein Zug des Computers statt findet
- Schaue dir die Datei script2.js an, hier gibt es die Funktion `botMove`
- Füge hier deine eigene Logik ein!
- Am Ende der Funktion ist der gleiche Inhalt wie in der Funktion davor
- **Ziel deines Codes sollte es also sein, den Index (Zahl von 0 - 8) des Bot-Zugs zu bestimmen**
- In diesem Index, darf aber kein vorheriger Zug sein!
- Damit alles funktioniert, muss die letzte Zeile deiner Änderung wie folgt aussehen:

```javascript
function botMove() {

    const index = 5//Hier das Resultat deiner Logik


    cells[index].style.backgroundColor = 'lightcoral'; // Player O bekommmt lightcoral Farbe
    cells[index].textContent = 'O'; // Player O bekommmt lightcoral Farbe
    oMoves.push(index); // Speichere den Zug von O in das oMoves Array
}
```


- Tipps:
    - Finde zuerst heraus, welche Felder noch frei sind
    - Bestimme eines dieser Felder auf zufälliger Basis


## Optional

- Jetzt wird es kompliziert!
- Schaffst du es, deinen Bot Intelligent zu machen?
- Hier gibt es verschiedene Möglichkeiten:

    - Nutzte eine AI API (zb. ChatGPT) und frage nach dem nächsten Zug
    - Schreibe deine eigene Lösung

- Tipps:
    - Finde zuerst alle möglichen Felder und speichere diese in einem Array
    - Nun musst du ein Bewertungssystem nutzen und jedem Zug eine Bewertung verpassen
    - Der Zug mit der besten Bewertung wird ausgeführt
    - Ein beliebter Weg ist der Minimax Algorythmus
    - Schaue dir folgenden [Artikel](https://www.neverstopbuilding.com/blog/minimax) an.

