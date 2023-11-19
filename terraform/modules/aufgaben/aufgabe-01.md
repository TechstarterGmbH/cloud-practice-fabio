# Aufgabe 1: Verständnisfragen

1. Was ist der Vorteil bei der Nutzung von Terraform Modulen?
2. Welche Hauptkomponenten sollten in diesem Setup erstellt werden?
3. Beschreibe die Projektstruktur eines Terraform Moduls.
4. Welche Rolle spielt die `versions.tf`-Datei im Hauptmodul?
5. Was ist die Rolle der `variables.tf`-Datei im EC2-Modul?
6. Welche Werte werden als Standardwerte für die EC2-Variablen festgelegt?
7. Warum wird in der `ec2/main.tf`-Datei die IAM-Instanzprofilvariable überprüft und gegebenenfalls auf null gesetzt?
8. Welche Ausgabevariablen sind in der `ec2/outputs.tf`-Datei definiert?
9. Was ist die Rolle der `main.tf`-Datei im Hauptmodul?
10. Welche IAM-Ressourcen werden im `iam/main.tf`-Modul erstellt?
11. Wie kann man im Hauptmodul auf Daten eines Modules zugreifen?
12. Warum ist es notwendig, Terraform nach dem Hinzufügen eines neuen Moduls erneut zu initialisieren?
13. Welche Berechtigungen werden der IAM-Rolle in Bezug auf den S3-Bucket zugewiesen?
