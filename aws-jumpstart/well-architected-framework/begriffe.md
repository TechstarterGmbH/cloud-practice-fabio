# Wichtige Begriffe und Konzepte

### High Availabilty
Hochverfügbarkeit bezeichnet die Fähigkeit eines Systems, trotz Ausfalls einer seiner Komponenten mit einer hohen Wahrscheinlichkeit den Betrieb zu gewährleisten. Das Gegebensein von Robustheit gegen Benutzungsfehler gilt als Grundvoraussetzung für die Bereitstellung bzw. Verwirklichung von „Hochverfügbarkeit“

**Beispiel**: 
Eine einfache EC2 Instanz ist nicht hochverfügbar, da sie nur auf einem einzigen Server läuft. Eine EC2 Instanz in einer Auto Scaling Gruppe (in verschiedenen Availability Zones) ist hochverfügbar, da sie auf mehreren Servern (örtlich getrennt) läuft.

-----------

### Auto Scaling
Autoscaling ist eine Methode im Cloud-Computing-Umfeld, die dafür sorgt, dass die Anzahl der Server innerhalb einer Server-Farm automatisch skaliert wird. Dies bedeutet, dass bei steigender Load die Arbeit von einer größeren Anzahl an Servern erledigt wird.

**Beispiel**: 
Eine EC2 Autoscaling group erstellt automatisch neue EC2 Instanzen, wenn die Nachfrage steigt. Die EC2 Instanzen werden automatisch wieder entfernt, wenn die Nachfrage sinkt.

-----------

### Infrastructure as Code (IaC)
Aus dem Englischen übersetzt-Infrastruktur als Code ist der Prozess der Verwaltung und Bereitstellung von Rechenzentren durch maschinenlesbare Definitionsdateien und nicht durch physische Hardwarekonfiguration oder interaktive Konfigurationstools

**Beispiel**: 
AWS CloudFormation ist ein Dienst, der es ermöglicht, Infrastruktur als Code zu definieren. Die Definition erfolgt in einer JSON oder YAML Datei. Diese Datei kann dann in der AWS CloudFormation Konsole oder über die AWS CLI ausgeführt werden.

-----------

### Function as a Service (FaaS)
Function as a Service ist eine Kategorie des Cloud Computing und zwischen Backend as a Service und Software as a Service und im Rahmen von “Serverless Computing” einzuordnen

**Beispiel**:
AWS Lambda ist ein FaaS-Anbieter. AWS Lambda ermöglicht es, Code auszuführen, ohne dass ein Server dafür benötigt wird. Der Code wird in einer AWS Lambda Funktion definiert. Die Funktion kann dann über eine API oder einen Event ausgelöst werden.

-----------

### Serverless
Aus dem Englischen übersetzt-Serverless Computing ist ein Cloud-Computing-Ausführungsmodell, bei dem der Cloud-Anbieter Maschinenressourcen nach Bedarf zuweist und sich im Auftrag seiner Kunden um die Server kümmert.


**Beispiel**:
AWS S3 ist ein serverless Service. Es gibt keine Server, die für den Betrieb von S3 verantwortlich sind. Im hintergrund laufen natürlich Server, die den Service bereitstellen, diese werden aber von AWS verwaltet. Somit muss der Benutzer sich nicht um die Server kümmern und provitiert von dem AWS SLA (Standard Verfügbarkeit 99.99 %)

-----------

### Authentication
Authentifizierung ist der Nachweis einer behaupteten Eigenschaft einer Entität, die beispielsweise ein Mensch, ein Gerät, ein Dokument oder eine Information sein kann und die dabei durch ihren Beitrag ihre Authentisierung durchführt.

**Beispiel**:
Ein Benutzername und ein Passwort sind eine Form der Authentifizierung. Der Benutzername ist die Eigenschaft, die behauptet wird, und das Passwort ist der Beitrag, der die Authentifizierung durchführt.

-----------

### Authorization
Eine Autorisierung ist im weitesten Sinne eine Zustimmung oder Erlaubnis, spezieller die Einräumung von Rechten gegenüber interessierten Rechtssubjekten, gegebenenfalls als Nutzungsrecht gegenüber Dritten.

**Beispiel**:
Nachdem sich ein Nutzer mit einem Benutzernamen und Passwort authentifiziert hat, kann er auf die Ressourcen zugreifen, die ihm durch die Autorisierung zugewiesen wurden.

-----------

### Authentication vs. Authorization
Bei der Authentifizierung wird überprüft, wer eine Person ist, während bei der Autorisierung überprüft wird, auf welche spezifischen Anwendungen, Dateien und Daten ein Benutzer Zugriff hat. Ein Beispiel aus dem Leben macht es deutlich: Eine Fluggesellschaft muss festlegen, welche Personen an Bord kommen dürfen. Dabei besteht der erste Schritt darin, die Identität eines Passagiers zu bestätigen, um sicherzustellen, dass er derjenige ist, der er vorgibt zu sein. Sobald die Identität eines Fluggastes festgestellt wurde, besteht der zweite Schritt in der Überprüfung von Sonderleistungen, zu denen der Fluggast Zugang hat, sei es ein Flug in der ersten Klasse oder ein Besuch in der VIP-Lounge.
[Quelle](https://www.sailpoint.com/de/identity-library/authentication-vs-authorization-was-ist-der-unterschied/)