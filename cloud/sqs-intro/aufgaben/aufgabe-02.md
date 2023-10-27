# Aufgabe 2: SQS Praxis

## 1. Infrastructure As Code mit Terraform

Konvertiere das im Praxisteil erstellte Setup zu Terraform:

- SQS Queue mit
    - Queue Policy
    - Remote Trigger für Lambda
    - Terraform Output für Queue URL 

- Lambda Function 
    - Execution Role mit access zur SQS Queue für `sqs:*` Actions
    - Lambda Code von snippet

## 2. Teste den Consumer

- Stelle sicher, dein AWS Profil ist richtig konfiguriert und dein SSO Token aktuell (`aws sso login`)
- Führe das folgende Script in einer `Bash` Session aus
- Tausche folgende Variablen aus:
    - QUEUE_URL: Deine Queue Url (Terraform Output)
    - aws profile: Dein konfiguriertes aws profile `aws configure list-profiles`

```bash
QUEUE_URL="DEINE_QUEUE_URL"
for i in 1 2 3 4 5 6 7 8 9 10
do
    aws sqs send-message \
    --profile DEIN_AWS_SSO_PROFILE \
    --queue-url $QUEUE_URL \
    --message-body "Test $i"
done
```
