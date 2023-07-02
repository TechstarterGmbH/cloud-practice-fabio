# Gruppenarbeit

**Diese Gruppenarbeit findet im Unterricht statt und wird nicht bewertet**

## Szenario

Du und dein Team wurden beauftragt, eine kleine REST API zu erstellen, die Cocktail Daten zur Verfügung stellt. 
Ihr habt euch dazu entschieden im Hintergrund eine andere API zu verwenden

1. Erstelle ein neues NodeJs Projekt mit `index.js` Datei

2. Folgender Code lädt Daten von einer externen API, erstelle daraus eine Funktion, die ein Promise mit dem Feld `strInstructionsDE` zurück gibt

```javascript
fetch("https://www.thecocktaildb.com/api/json/v1/1/search.php?s=old_fashioned")
    .then(function(result) { return result.json() })
    .then(function(data) { console.log(data) });
```

3. Installiere das `express` npm package und erstelle eine standard api mit dem `GET` Endpunkt `/drink` 

4. Konvertiere den erstellten Endpunkt zu einer async Funktion und rufe die API Funktion auf. Gebe das Ergebnis der Funktion als Response zurück
