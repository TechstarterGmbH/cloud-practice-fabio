# JavaScript

JavaScript ist eine Programmiersprache, die hauptsächlich für die Entwicklung von interaktiven Webseiten verwendet wird. Hier sind einige wichtige Konzepte in JavaScript:

- **Variablen**: In JavaScript können wir Variablen verwenden, um Werte zu speichern. Beispiel:
  
```javascript
let name = 'John';
```

- **Datentypen**: JavaScript unterstützt verschiedene Datentypen wie String, Number, Booleans, Arrays, Objekte und mehr. Beispiel:

```javascript
let age = 30;
let isStudent = true;
let hobbies = ['Singen', 'Tanzen', 'Lesen'];
let person = {
  name: 'John',
  age: 30,
  isStudent: true
};
```

- **Funktionen**: Mit Funktionen können wir Codeblöcke definieren, die wiederverwendbar sind. Beispiel:

```javascript
function greet(name) {
  console.log('Hallo ' + name + '!');
}

greet('John');
```

- **Bedingungen**: Mit Bedingungen können wir Code basierend auf bestimmten Kriterien ausführen. Beispiel:


```javascript
let age = 18;

if (age >= 18) {
  console.log('Du bist volljährig.');
} else {
  console.log('Du bist minderjährig.');
}

```

- **Schleifen**: Schleifen ermöglichen es uns, Code wiederholt auszuführen. Beispiel

```javascript
for (let i = 0; i < 5; i++) {
  console.log(i);
}
```

- **DOM-Manipulation**: Das Document Object Model (DOM) ermöglicht uns, auf Elemente einer Webseite zuzugreifen und sie zu verändern. Beispiel:

```javascript
let heading = document.querySelector('h1');
heading.textContent = 'Neuer Titel';
```

- **Event-Handling**: JavaScript ermöglicht es uns, auf Benutzerinteraktionen zu reagieren, z.B. auf Mausklicks oder Tastatureingaben. Beispiel:

```javascript
let button = document.querySelector('button');

button.addEventListener('click', function() {
  console.log('Button wurde geklickt!');
});
```
