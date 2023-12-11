---

class: invert

---

# Einführung in GitLab CI

---

## Was ist GitLab CI?

---

### Gitlab

- **GitLab:** ist eine Plattform für: 
    - DevOps
    - Projektmanagement
    - Versionskontrolle
    - CI/CD-Pipelines

---

### Gitlab CI

- Ähnlich wie Github Actions
- Seit 2012! (Github Actions seit 2018)
- Es gibt keinen Marketplace, es kann aber jeder Container verwendet werden

---

## Schlüsselkonzepte

---

- **Pipelines:** 
    - GitLab CI verwendet Pipelines, um den Prozess der Automatisierung zu organisieren.
    - Eine Pipeline ist eine Reihe von Schritten, die automatisch ausgeführt werden, wenn Code in das Repository eingecheckt wird.

---

- **Jobs:**
    - Jobs sind einzelne Aufgaben in einer Pipeline.
    - Sie können parallele oder aufeinander folgende Schritte umfassen, die den Code kompilieren, testen, bereitstellen usw.

---

- **Runner:**
    - Ein Runner ist eine Instanz, die Jobs ausführt.
    - Es gibt Shared Runner die von Gitlab bereitgestellt werden und Selbst gehostete Runner

---

## Grundlegende Schritte

1. Gitlab Account erstellen
2. Neues Repo erstellen
3. Im Repo Root eine `.gitlab-ci.yml` Datei erstellen
4. Runner konfigurieren

---

 ```yaml
stages:
 - build
 - test
 - deploy

build_job:
 stage: build
 script:
   - echo "Building the code..."

test_job:
 stage: test
 script:
   - echo "Running tests..."
```

---

## Fortgeschrittene Konzepte

---

- **Variablen und Umgebungen:** 
    - Verwende Variablen, um Werte zwischen Jobs zu übertragen, und definiere Umgebungen für verschiedene Entwicklungsstufen.

```yaml
variables:
  BINARY_NAME: "bin/program"

test_job:
  script: 
    - "$BINARY_NAME" test
```

---

- **Docker-Integration:**
    - Integriere Docker, um Anwendungen in isolierten Containern zu erstellen und bereitzustellen.

```yaml
test_job:
  image: node:lts
```

---

- **Trigger und Abhängigkeiten:**
    - Konfiguriere Trigger und Abhängigkeiten zwischen Jobs, um komplexe Workflows zu erstellen.

```yaml
build_job
  script:
    - npm run build

deploy_job:
  script:
    - s3 sync ./dist s3://my-bucket
  needs:
    - build_job
```

---

## Ressourcen

- [GitLab CI/CD-Dokumentation](https://docs.gitlab.com/ee/ci/)
- [GitLab Runner-Dokumentation](https://docs.gitlab.com/runner/)
- [GitLab CI/CD-Tutorial](https://www.tutorialspoint.com/gitlab/gitlab_ci_cd.htm)

