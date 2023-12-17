# Aufgabe 2: Praxis

## Ziel

Erweitere die GitLab CI-Konfiguration für ein React-Projekt, um die folgenden Schritte umzusetzen:

1. Build-Job in Merge Request und Main Pipeline.
2. Test-Job in Merge Request und Main Pipeline.
3. Deploy-Job nur in der Main Pipeline.

## Grundlagen

Um die folgenden Schritte umzusetzen, lese dir die Dokumentation für über Rules durch:
- [https://docs.gitlab.com/ee/ci/jobs/job_control.html](https://docs.gitlab.com/ee/ci/jobs/job_control.html)
- [https://docs.gitlab.com/ee/ci/yaml/#rules](https://docs.gitlab.com/ee/ci/yaml/#rules)

## Schritte

### 1. Build-Job

- Passe die `.gitlab-ci.yml`-Datei an, um den Build-Job im Merge Request (MR) und bei allen Änderungen auf dem main Branch auszuführen.
- Entweder erstellst du hierfür zwei verschiedene Jobs (einen für main / einen für MRs) oder einen Job der für beide Events konfiguriert ist

### 2. Test-Job

- Passe die `.gitlab-ci.yml`-Datei an, um den Test-Job im Merge Request und bei allen Änderungen auf dem main Branch auszuführen.

### 3. Deploy-Job

- Passe die `.gitlab-ci.yml`-Datei an, um den `pages` job in der Deploy Stage nur im main Branch auszuführen

### 4. Test

- Erstelle ein neues MR und pushe ein Änderung, mache ein Screenshot von der resultierenden Pipeline
- Merge das MR und mache einen Screenshot von der resultierenden Pipeline
