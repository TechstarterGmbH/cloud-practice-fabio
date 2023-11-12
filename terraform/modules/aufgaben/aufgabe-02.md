# Aufgabe 2: Praxisaufgabe

## 1. EC2 Modul: User Data

- Erweitere das EC2 Modul um auch den Parameter user_data als string zu übergeben

## 2. Teste die Verbindung zum s3 bucket

- Erstelle ein User Data script innerhalb des Main Moduls, was an das EC2 Modul übergeben wird
- Das Script soll eine Text Datei in das S3 Bucket schreiben
- **Nach den Änderungen im Terraform Code sollte der state erst destroyed werden und dann neu erstellt werden**

## 3. (Freiwillig) ELB Modul

- Erstelle ein neues Modul, was einen AWS Elastic Load Balancer (Application) erstellt
- Folgende Resourcen sollen erstellt werden:
    - aws_lb
    - aws_lb_listener
    - aws_lb_target_group
- Das Modul soll in der Haupt main.tf eingebunden werden und mit der Instanz verknüpft werden
