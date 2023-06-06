# HTML (Hypertext Markup Language)

HTML ist die grundlegende Struktursprache des World Wide Web. Mit HTML können wir die grundlegende Struktur einer Webseite definieren. Hier sind einige wichtige Konzepte in HTML:


- **HTML-Tags**: HTML verwendet Tags, um den Inhalt einer Webseite zu strukturieren. Tags sind in spitzen Klammern angegeben und haben einen Anfangs- und einen Endtag. Zum Beispiel: &lt;p&gt;Dies ist ein Absatz.&lt;/p&gt;.

    - **Überschrifts-Tags**: HTML bietet verschiedene Tags für Überschriften an, wie &lt;h1&gt;, &lt;h2&gt;, &lt;h3&gt; usw. Sie werden verwendet, um Texte hierarchisch zu gliedern. Beispiel: 
    ```html
    <h1>Überschrift der ersten Ebene</h1>
    <h2>Überschrift der zweiten Ebene</h2>
    ```

    - **Absatz-Tags**: Das &lt;p&gt;-Tag wird verwendet, um Textabsätze zu kennzeichnen. Es ermöglicht uns, zusammenhängenden Text zu strukturieren und zu formatieren. Beispiel:

    ```html
    <p>Dies ist ein Absatz.</p>
    <p>P Tags können nicht genested sein</p>
    <p><p>DAS IST FALSCH</p></p>
    ```

    - **Listen-Tags**: Mit den Tags &lt;ul&gt; (ungeordnete Liste) und &lt;ol&gt; (geordnete Liste) können wir Listen erstellen, um Elemente aufzulisten. Beispiel:
    ```html
    <ul>
        <li>Element 1</li>
        <li>Element 2</li>
        <li>Element 3</li>
    </ul>
    ```

    - **Link-Tags**: Das &lt;a&gt;-Tag ermöglicht es uns, Links zu anderen Webseiten oder Ressourcen einzufügen. Wir können den Link-Text und die Ziel-URL angeben. Beispiel:
    ```html
    <a href="https://www.example.com">Link zur Beispielwebsite</a>
    ```

- **Elemente**: Ein HTML-Element besteht aus einem öffnenden Tag, dem Inhalt und einem schließenden Tag. Beispielsweise: &lt;h1&gt;Überschrift&lt;/h1&gt;. Es gibt verschiedene Elemente für Überschriften, Absätze, Bilder, Links und mehr.

    - **Bild-Tags**: Mit dem &lt;img&gt;-Tag können wir Bilder in eine Webseite einfügen. Wir geben die Bildquelle (src) und optionale Attribute wie die Beschreibung (alt) an. Beispiel:
    ```html
    <img src="bild.jpg" alt="Beschreibung des Bildes">
    ```

    - **Formular-Tags**: HTML bietet verschiedene Tags für Formulare an, wie &lt;input&gt;, &lt;textarea&gt;, &lt;select&gt; usw. Sie ermöglichen Benutzereingaben und Datenübermittlung. Beispiel:
    ```html
    <form>
    <label for="name">Name:</label>
    <input type="text" id="name" name="name">
    <input type="submit" value="Senden">
    </form>
    ```

- **Attribute**: HTML-Tags können Attribute enthalten, die zusätzliche Informationen über ein Element angeben. Zum Beispiel: &lt;img src="bild.jpg" alt="Beschreibung des Bildes"&gt;. Attribute werden in den öffnenden Tags angegeben.

    - **src**: Das src-Attribut wird verwendet, um die Quelle eines Elements anzugeben, wie z.B. die URL eines Bildes oder das Ziel eines Links.

    - **alt**: Das alt-Attribut wird verwendet, um eine alternative Beschreibung für ein Bild anzugeben. Es wird angezeigt, wenn das Bild nicht geladen werden kann.

    - **href**: Das href-Attribut wird für Links verwendet und gibt die Ziel-URL an, auf die der Link verweisen soll.

    - **class und id**: Diese Attribute dienen zur Klassifizierung und Identifizierung von Elementen, um das Styling oder die JavaScript-Manipulation zu erleichtern.


- **Grundlegende Struktur**: Eine HTML-Datei besteht aus zwei Hauptbereichen: dem &lt;head&gt;-Bereich und dem &lt;body&gt;-Bereich.
    ```html
    <!DOCTYPE html>
    <html>
        <head>
            <title>Page Title</title>
        </head>
        <body>
            <h1>This is a Heading</h1>
            <p>This is a paragraph.</p>
        </body>
    </html
    ```

    - Der &lt;head&gt;-Bereich enthält Metadaten und Informationen über die Webseite, wie den Titel der Webseite, externe CSS- und JavaScript-Dateien und vieles mehr. Beispiel:
    ```html
    <head>
    <title>Meine Webseite</title>
    <link rel="stylesheet" href="styles.css">
    </head>
    ```

    - Der &lt;body&gt;-Bereich enthält den eigentlichen Inhalt der Webseite, wie Überschriften, Absätze, Bilder, Links usw. Beispiel:
    ```html
    <body>
    <h1>Willkommen auf meiner Webseite</h1>
    <p>Dies ist ein Beispieltext.</p>
    <img src="bild.jpg" alt="Beschreibung des Bildes">
    <a href="https://www.example.com">Link zur Beispielwebsite</a>
    </body>
    ```
