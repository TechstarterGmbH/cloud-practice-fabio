# Aufgabe 2

## Erstellung einer Compute Engine mit verschlüsseltem Volume und Apache-Installation

In dieser praktischen Aufgabe erstellen wir eine virtuelle Maschine (VM) in Google Cloud Compute Engine. Wir werden eine VM mit einem verschlüsselten Datenträger erstellen, Ubuntu als Betriebssystem verwenden und ein Startskript integrieren, um Apache zu installieren und zu aktivieren. Zusätzlich werden wir Firewall-Regeln einrichten, um den HTTP- und HTTPS-Verkehr zu erlauben.

**Voraussetzungen:**

- Du benötigst ein Google Cloud-Konto. Wenn du noch keines hast, kannst du ein kostenloses Konto erstellen.

**Schritte:**

1. **Anmeldung bei Google Cloud:**

   Melde dich in deinem Google Cloud-Konto an und stelle sicher, dass du über ausreichend Guthaben oder Ressourcen verfügst.

2. **Öffnen der Google Cloud Console:**

   Gehe zur [Google Cloud Console](https://console.cloud.google.com/) und melde dich an, wenn du dazu aufgefordert wirst.

3. **Erstellung einer neuen VM:**

   - Klicke auf die Schaltfläche "Navigation" (Hamburger-Symbol) links oben in der Konsole.
   - Wähle "Compute Engine" aus dem Menü "Compute" aus.

4. **VM-Erstellung:**

   - Klicke auf "VM-Instanzen".
   - Klicke auf "Instanz erstellen".

5. **Konfiguration der VM:**

   - Gib einen Namen für deine VM ein, z. B. "web-server-vm".
   - Wähle die Region und Zone aus, in der deine VM gehostet werden soll.
   - Wähle "Ubuntu" als Betriebssystem.
   - Beim Konfigurieren der Boot Disk, stelle sicher, dass `Google managed Encryption Key` aktiv ist

6. **Erstellung von Firewall-Regeln:**

   - Unter dem Punkt `Firewall`
   - Klicke auf `Allow HTTP Trafic`, die den HTTP-Verkehr (Port 80) zulässt.
   - Klicke auf `Allow HTTPS Trafic`, die den HTTPS-Verkehr (Port 443) zulässt.

7. **Hinzufügen des Startskripts:**

   Erstelle ein Startskript, das Apache installiert und aktiviert. Hier ist ein einfaches Beispiel:
   Dieses Script muss unter `Advanced Options > Automation` hinzugefügt werden

   ```bash
   #!/bin/bash
   apt-get update
   apt-get install -y apache2
   systemctl enable apache2
   systemctl start apache2
   ```

8. **Starten der VM:**

   - Klicke auf "Erstellen", um die VM zu erstellen. Die Bereitstellung kann einige Minuten dauern.

9. **Herstellung einer Verbindung zur VM:**

   - Nachdem die VM erstellt wurde, klicke auf den Namen deiner VM in der Liste der VM-Instanzen.
   - Klicke auf "SSH", um eine sichere Verbindung zur VM herzustellen.

10. **Überprüfung der Apache-Installation:**

    Führe auf der VM den Befehl `sudo systemctl status apache2` aus, um sicherzustellen, dass Apache erfolgreich installiert und aktiviert wurde.
    Gebe die IP Addresse der VM im Browser ein und stelle sicher, dass die Apache Default page angezeigt wird. **STELLE SICHER, DASS http:// benutzt wird**
