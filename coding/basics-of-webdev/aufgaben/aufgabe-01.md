# Aufgabe 1: HTML / CSS

## Szenario

- Du wurdest von einem Restaurant beauftragt eine neue Webseite zu erstellen um das Unternehmen im Internet bewerben zu können.
- Die Website soll folgende Sektionen enthalten:
    
    - Hero Section
    - Location Section
    - About Us Section

## 1. Setup

- Erstelle einen neuen Projekt Ordner mit folgender Struktur:

```
- my-website/
    - index.html
    - style.css
```

- Initialisiere die index.html Datei mit folgenden Tags in der richtigen Ordnung:

    - html tag
    - head tag
    - body tag

- Ändere den Inhalt der HTML Datei so ab, dass die CSS Datei `style.css` inkludiert wird

## HTML 

### 2. HTML Inhalt

- Erstelle jetzt die `section` Elemente für jede der angegebenen Sektionen. Achte darauf, dass du jeder Sektion eine angemessene Klasse gibst

```html
... 
<body>
<section class="hero-section">
</section>
<section class="location-section">
</section>
...
</body>
```


### 3. Hero Section

- Eine Hero Sektion soll das Interesse wecken und den Nutzer zum scrollen anregen
- Suche im Internet auf [Pexels](https://www.pexels.com/de-de/) nach einem geeigneten Bild, lade es herunter und speichere es in deinem Projektordner
- Füge das Bild mittels `<img />` Tag in der Hero Sektion ein
- Füge außerdem noch eine Überschrift (`<h1>`) ein, Text kann frei ausgewählt werden

### 4. Location Section 

- Füge nun den Inhalt in der Location Section ein:
    
    - h2 mit dem Text: "Anfahrt"
    - p-Tag mit einer Adresse (Kann frei ausgewählt werden)

### 5. About Us Section

- Füge auch hier folgenden Inhalt ein:
    
    - Überschrift (h2) mit dem Text 'About Us'
    - Zwei P Tags mit jeweils 250 Wörtern 'Lorem Ipsum'
    - Falls du nicht weißt was Lorem Ipsum ist, Google Is your Friend

## CSS

### 6. Global Styling

- Erstelle folgende Styles, die für alle Elemente des angegebenen Types der gesamten Seite gelten:

    - Hintergrund der gesamten Seite ist '#2d2c30'
    - Alle Überschriften sind '#e1daf5'
    - Alle p Tags habe ein `margin-top` und `margin-bottom` von 10px

### 7. Section Styling

- Wende folgende Styles auf die angegebenen Sektionen an

    - Zentriere das Bild in der Hero Section ( Recherchiere im Internet nach Flexbox )
    - Die erste Überschrift (h1) soll eine Schriftgröße von 20px haben
    - Alle anderen Überschriften sollen eine Größe von 16px haben
