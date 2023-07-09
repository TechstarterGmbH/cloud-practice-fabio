# SSH Config für Github

Nutze folgende für Github
Erstelle die Datei ~/.ssh/config mit folgendem Inhalt:

```
Host github.com
    User git
    Hostname github.com
    PreferredAuthentications publickey
    IdentityFile /home/fabio/.ssh/github_id_rsa
```
