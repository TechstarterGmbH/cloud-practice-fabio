# Aufgabe 2: Umgang mit Git

In dieser praktischen Aufgabe wirst du lernen, wie man ein Repository von GitHub clont, eine Änderung vornimmt und einen Pull Request erstellt. Folge den Schritten unten:

**Wichtig**: Für diese Aufgabe brauchst du ein Github Account und ein konfiguriertes SSH Profil.

1. In diesem Beispiel wirst du ein Test-Repository clonen, dass zu diesem Zweck angelegt wurde. Navigiere zu folgender Github URL in deinem Browser: [https://github.com/0xfabio/git-tutorial](https://github.com/0xfabio/git-tutorial)

2. Öffne die Konsole oder das Terminal auf deinem Computer.

3. Clone das Repository auf deinen lokalen Computer mit dem Befehl: 
   ```bash
   git clone <Repo-URL>
   ```
   Ersetze `<Repo-URL>` durch die URL des Repositories, die du von GitHub kopierst.

4. Wechsle in das Verzeichnis des geklonten Repositories mit dem Befehl:
   ```bash
   cd git-tutorial
   ```

5. Erstelle einen neuen Branch mit dem Befehl:
   ```bash
   git branch -b <Branch-Name>
   ```
   Ersetze `<Branch-Name>` durch einen aussagekräftigen Namen für deinen Branch.

6. Wechsele zum neuen Branch mit dem Befehl:
   ```bash
   git checkout <Branch-Name>
   ```
   Ersetze `<Branch-Name>` durch den Namen des Branches, den du gerade erstellt hast.

7. Mache eine Änderung in einem beliebigen Texteditor deiner Wahl im geklonten Repository. Füge z.B. eine neue Zeile in einer Datei hinzu oder ändere den bestehenden Code.

8. Überprüfe den Status der Änderungen mit dem Befehl:
   ```bash
   git status
   ```
   Du solltest sehen, dass deine Änderungen erkannt wurden.

9. Füge die geänderten Dateien dem Staging-Bereich hinzu mit dem Befehl:
   ```bash
   git add .
   ```
   Dadurch werden alle geänderten Dateien hinzugefügt.

10. Erstelle einen Commit mit deinen Änderungen und einer aussagekräftigen Commit-Nachricht mit dem Befehl:
    ```bash
    git commit -m "<Commit-Nachricht>"
    ```
    Ersetze `<Commit-Nachricht>` durch eine kurze, beschreibende Nachricht.

11. Push den neuen Branch und den Commit in das entfernte Repository mit dem Befehl:
    ```bash
    git push origin <Branch-Name>
    ```
    Ersetze `<Branch-Name>` durch den Namen deines Branches.

12. Gehe zum Repository auf GitHub und öffne den Pull Request (PR) im Repository. Klicke auf die Schaltfläche "New Pull Request".

13. Überprüfe die Änderungen im PR und füge eine aussagekräftige Beschreibung hinzu.

14. Klicke auf "Create Pull Request", um den Pull Request zu erstellen und deine Änderungen vorzuschlagen.

Herzlichen Glückwunsch! Du hast erfolgreich ein Repository von GitHub geklont, eine Änderung vorgenommen und einen Pull Request erstellt. Jetzt können andere Entwickler deine Änderungen überprüfen und in das Hauptrepository integrieren.

