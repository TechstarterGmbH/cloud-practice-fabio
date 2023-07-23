---
class: invert
---
# Einführung in Unit Testing mit Node.js

![Title image](./imgs/title.png)

---

## Was ist Unit Testing?

Unit Testing ist eine Testmethode in der Softwareentwicklung, bei der einzelne Teile des Codes, auch als "Units" bezeichnet, auf ihre Funktionalität überprüft werden. Eine Unit kann eine Funktion, eine Methode oder ein Modul sein, die unabhängig voneinander getestet wird, um sicherzustellen, dass sie korrekt funktioniert.

Das Ziel des Unit Testings besteht darin, sicherzustellen, dass jede einzelne Unit wie erwartet arbeitet, unabhängig von anderen Teilen des Codes oder externen Abhängigkeiten. Indem man diese Tests auf kleinster Einheitenebene durchführt, können potenzielle Fehler oder Probleme frühzeitig identifiziert und behoben werden, bevor sie sich auf andere Teile der Anwendung ausbreiten.

---

## Warum Unit Testing?

Unit Testing ist eine wichtige Praxis in der Softwareentwicklung aus verschiedenen Gründen:

- **Fehlererkennung und -isolation:** Unit Tests ermöglichen es, Fehler frühzeitig zu erkennen und auf spezifische Units zu isolieren. Dadurch wird die Fehlersuche und -behebung erleichtert, da man genau weiß, welche Unit nicht wie erwartet funktioniert.

---

- **Codequalität und Wartbarkeit:** Gut geschriebene Unit Tests dienen auch als Dokumentation für die erwartete Funktionalität einer Unit. Sie helfen, den Code zu verstehen und zu warten, selbst wenn der Entwickler, der ihn geschrieben hat, nicht mehr verfügbar ist.

- **Vertrauen in den Code:** Durch das Vorhandensein von Unit Tests haben Entwickler mehr Vertrauen in ihren Code. Wenn ein Teil des Codes später geändert wird, kann man durch die Unit Tests überprüfen, ob die bestehenden Funktionen weiterhin korrekt arbeiten und ob die Änderungen unerwartete Nebenwirkungen haben.

- **Refactoring-Unterstützung:** Unit Tests bieten eine Sicherheitsnetz, wenn Refactoring oder Verbesserungen durchgeführt werden. Wenn die Unit Tests bestehen bleiben, kann man mit größerer Zuversicht Code-Verbesserungen vornehmen, da man weiß, dass erfolgreiche Tests eine korrekte Funktionalität bestätigen.

---

- **Skalierbarkeit und Zusammenarbeit:** Unit Tests ermöglichen es, dass Entwickler unabhängig voneinander an unterschiedlichen Units arbeiten können, ohne sich gegenseitig zu behindern. Dadurch wird die Zusammenarbeit in Teams erleichtert und die Gesamtqualität der Software verbessert.

- **Continuous Integration und Deployment (CI/CD):** Unit Tests sind ein wichtiger Bestandteil von CI/CD-Pipelines, um sicherzustellen, dass Codeänderungen keine schwerwiegenden Probleme verursachen und in die Produktion übernommen werden können.

---

## Vorbereitung für Unit Testing

Bevor man mit dem Schreiben von Unit Tests in Node.js beginnt, sind einige Vorbereitungen erforderlich:

![Mocha Chai](./imgs/mocha-chai.png)

---

1. **Node.js und npm:** Stelle sicher, dass Node.js und der Node Package Manager (npm) auf deinem System installiert sind, da sie für die Ausführung von Node.js-Anwendungen und die Installation von Test-Frameworks benötigt werden.

2. **Projektverzeichnis:** Du benötigst ein Projektverzeichnis, das den zu testenden Code enthält. Dies kann entweder ein bestehendes Projekt sein oder ein neues Projekt, das du erstellst.

---

3. **Testing-Bibliothek (Mocha) und Assertions-Bibliothek (Chai):** In Node.js gibt es verschiedene Test-Frameworks zur Auswahl. Für dieses Tutorial verwenden wir Mocha als Test-Framework und Chai als Assertions-Bibliothek. Du musst Mocha und Chai als Entwicklerabhängigkeiten in deinem Projekt installieren.

Mit diesen Vorbereitungen bist du bereit, mit dem Schreiben von Unit Tests in Node.js zu beginnen und deine Codequalität zu verbessern.

---

## Mocha

Mocha ist ein flexibles und beliebtes JavaScript-Testframework, das für das Schreiben und Ausführen von Tests in Node.js und im Browser verwendet wird. Es bietet eine übersichtliche und leserliche Syntax, die das Schreiben von Tests einfach und intuitiv macht.

---

### Hauptmerkmale von Mocha:

- **Beschreibende Teststruktur:** Mocha ermöglicht es, Tests in einer natürlichen Sprache zu schreiben, die für Entwickler leicht verständlich ist. Tests können in einer beschreibenden Struktur organisiert werden, die das Verhalten der getesteten Units klar darstellt.

- **Asynchrone Tests:** Mocha unterstützt asynchrone Tests, die für Node.js-Anwendungen unerlässlich sind. Entweder durch Verwendung von Callbacks, Promises oder async/await können asynchrone Testfälle erstellt werden.

---

- **Flexible Testausführung:** Mocha ermöglicht es, Tests in verschiedenen Umgebungen auszuführen. Du kannst deine Tests in der Kommandozeile, im Browser oder in einer Testumgebung wie `jsdom` ausführen.

- **Hooks:** Mocha stellt sogenannte "Hooks" bereit, wie `before`, `after`, `beforeEach` und `afterEach`, die es ermöglichen, Setup- und Cleanup-Aufgaben vor und nach Testfällen auszuführen. Diese Hooks sind nützlich, um Testdaten vorzubereiten oder Ressourcen freizugeben.

- **Reporter:** Mocha bietet verschiedene Reporter, die die Testergebnisse formatieren und ausgeben. Standardmäßig wird der "spec"-Reporter verwendet, der die Testergebnisse in einem klaren und lesbaren Format anzeigt.

---

## Chai

Chai ist eine mächtige Assertions-Bibliothek für JavaScript, die nahtlos mit Mocha und anderen Test-Frameworks integriert werden kann. Sie ermöglicht es, aussagekräftige und leicht verständliche Testaussagen zu erstellen.

---

### Hauptmerkmale von Chai:

- **Fließende Syntax:** Chai verwendet eine fließende Syntax, die dem Entwickler erlaubt, Testaussagen in einer natürlichen Sprache zu formulieren. Dies trägt dazu bei, dass die Tests leicht lesbar sind und die Absichten klar dargestellt werden.

- **Unterschiedliche Assertion-Styles:** Chai bietet verschiedene Assertion-Styles, darunter `should`, `expect` und `assert`, aus denen der Entwickler je nach Vorlieben wählen kann. Dadurch wird die Flexibilität erhöht, wie Testaussagen geschrieben werden können.

---

- **Vergleich von Werten:** Chai ermöglicht es, Werte auf Gleichheit, Größe oder ähnliche Eigenschaften zu überprüfen. Dabei können sowohl primitive Datentypen als auch komplexe Objekte getestet werden.

- **Assertions für asynchrone Tests:** Chai bietet spezielle Assertions für asynchrone Tests, um sicherzustellen, dass asynchrone Funktionen wie erwartet funktionieren.

- **Erweiterbarkeit:** Chai ist erweiterbar und ermöglicht es, eigene benutzerdefinierte Assertions zu erstellen. Dadurch kann die Bibliothek an die spezifischen Anforderungen eines Projekts angepasst werden.

---

# Let's get coding!
