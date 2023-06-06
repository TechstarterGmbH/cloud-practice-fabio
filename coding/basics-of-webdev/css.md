# CSS (Cascading Style Sheets)

CSS ist eine Stylesheet-Sprache, die verwendet wird, um das Aussehen einer Webseite zu gestalten. Hier sind einige wichtige Konzepte in CSS:

- **Wie bekomme ich CSS in mein HTML?**: CSS kann auf verschiedene Arten in HTML inkludiert werden:
    
    - **Inline**: Bei vielen HTML Tags kann ein style Attribut gesetzt werden. Diese Art überschreibt jedoch alle anderen Arten und wird daher nicht empfohlen.

    ```html
    <p style="color: green;">Hallo</p>
    ```
    - **Style Tag**: Außerdem gibt es noch einen expliziten Tag um css direkt in HTML zu definieren:

    ```html
    <p>Hallo</p>
    <style>
    p {
        color: green;
    }
    </style>
    ```

    - **Seperate Datei**: Die beliebteste und skalierbarste Option ist es, eine weitere Datei z.B. `style.css` zu erstellen und diese dann in der HTML Datei zu verlinken.
    ```html
    <!-- index.html -->
    <!DOCTYPE html>
    <html>
    <head>
      <link rel="stylesheet" href="styles.css">
    </head>
    <body>

    <h1>This is a heading</h1>
    <p>This is a paragraph.</p>

    </body>
    </html>
    ```

    ```css
    /* style.css */
    p {
        color: green;
    }
    ```

- **Selektoren**: CSS verwendet Selektoren, um Elemente auf einer Webseite auszuwählen und ihnen Stile zuzuweisen. Zum Beispiel: h1 { color: blue; }. Dieser Selektor wählt alle &lt;h1&gt;-Elemente aus und ändert ihre Textfarbe auf Blau.

  - **Elementselektoren**: Ein Elementselektor wählt alle Instanzen eines bestimmten HTML-Elements aus. Beispiel:
    ```css
    h1 {
      color: blue;
      font-size: 24px;
    }
    ```

  - **Klassenselektoren**: Ein Klassenselektor wählt alle Elemente aus, denen eine bestimmte Klasse zugewiesen ist. Beispiel:
    ```css
    .highlight {
      background-color: yellow;
    }
    ```

  - **ID-Selektoren**: Ein ID-Selektor wählt ein einzelnes Element anhand seiner eindeutigen ID aus. Beispiel:
    ```css
    #logo {
      width: 200px;
      height: 150px;
    }
    ```

- **Eigenschaften und Werte**: CSS verwendet Eigenschaften und Werte, um den Stil eines Elements festzulegen. Zum Beispiel: color: blue;. Hier wird die Textfarbe auf Blau gesetzt. Es gibt eine Vielzahl von Eigenschaften, um das Aussehen von Elementen anzupassen, wie z.B. Schriftart, Hintergrundfarbe, Abstände und mehr.

  - **Farben**: CSS bietet verschiedene Möglichkeiten, Farben anzugeben, wie z.B. Namen, Hexadezimalwerte oder RGB-Werte. Beispiel:
    ```css
    .heading {
      color: red;
      background-color: #f0f0f0;
    }
    ```

  - **Schriftarten**: Mit CSS können wir die Schriftart und -größe festlegen. Beispiel:
    ```css
    body {
      font-family: Arial, sans-serif;
      font-size: 16px;
    }
    ```

  - **Abstände**: Mit CSS können wir den Abstand um Elemente herum festlegen. Beispiel:
    ```css
    .box {
      margin: 10px;
      padding: 20px;
    }
    ```

- **Kaskadierung und Vererbung**: CSS verwendet das Konzept der Kaskadierung, um zu bestimmen, welche Stile angewendet werden, wenn mehrere Regeln auf ein Element zutreffen. CSS ermöglicht auch die Vererbung von Stilen von übergeordneten Elementen auf untergeordnete Elemente. Beispiel:
  ```css
  body {
    color: blue;
  }

  h1 {
    font-size: 24px;
  }

