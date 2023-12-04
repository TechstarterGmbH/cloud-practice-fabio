# Aufgabe 2: Praxis

## Probleme mit der Praxisaufgabe

- **Keine zentrale Speicherung des Terraform States**
- **Doppelte Referenzierung des Bucket Names**

### 1. Terraform State

- In dem erstellten Beispiel wurde der Terraform State auschließlich lokal gespeichert
- Somit werden bei jedem Aufruf der Pipeline alle Resourcen neu erstellt!
- Ändere deine Pipeline so um, dass der Terraform State extern gehosted wird.
- Möglichkeiten:
    - S3 Bucket: 
        - Stelle sicher, dass du von Github Actions auf das Bucket zugreifen kannst
        - **Provisioniere das Statebucket NICHT im gleichen Terraform State!!**
        - Mehr Infos: [https://spacelift.io/blog/terraform-s3-backend](https://spacelift.io/blog/terraform-s3-backend)
    - TfState.dev:
        - Stelle sicher, dass du einen Personal Access Token hast und dieser als Github Actions secret angelegt ist
        - Mehr Infos: [https://github.com/tfstate](https://github.com/tfstate)

### 2. Bucket Name

- Aktuell wird der Bucket name an zwei verschiedenen Stellen verwendet:
    - Terraform main.tf
    - Github Actions (yaml) definition
- Baue das Setup so um, dass der Wert nur einmal definiert wird und dann übergeben wird
- Möglichkeiten:
    - Terraform Output:
        - Definiere einen Output für den Bucket Name
        - In deiner Github Action, rufe `terraform output` aut und übergebe das Ergebnis and den aws-cli aufruf
    - Definiere den Namen als ENV variable:
        - Erstelle eine TF Variable im Haupt Modul
        - Übergebe den Bucketnamen von deinem Github Actions job an Terraform

### 3. Pipeline bei PR (Freiwillig)

- Ertelle eine weitere Pipeline, die aber nicht bei Push events getriggert wird sondern im PR
- Aktionen:
    - NPM build
    - NPM test
    - TF validate
    - TF plan
