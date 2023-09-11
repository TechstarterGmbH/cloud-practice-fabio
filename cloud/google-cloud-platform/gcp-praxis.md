# Praktische Aufgabe: Erstellung einer Compute Engine VM in Google Cloud

In dieser praktischen Aufgabe werden wir eine virtuelle Maschine (VM) in Google Cloud erstellen. Eine VM ist ein virtueller Computer, den wir in der Cloud ausführen können. Google Cloud bietet eine Dienstleistung namens "Compute Engine", die es ermöglicht, VMs zu erstellen, zu konfigurieren und zu verwalten.

**Voraussetzungen:**

- Ein Google Cloud-Konto. Wenn du keines hast, kannst du ein kostenloses Konto erstellen.

**Schritte:**

1. **Anmeldung bei Google Cloud:**

    Melde dich in deinem Google Cloud-Konto an. Stelle sicher, dass du über ausreichend Guthaben oder Ressourcen verfügst, um eine VM zu erstellen (Test Zeitraum).

2. **Öffnen der Google Cloud Console:**

    Gehe zur [Google Cloud Console](https://console.cloud.google.com/) und melde dich an, wenn du dazu aufgefordert wirst.

3. **Erstelle ein neues Projekt:**
    
    Jede erstellte Ressource in der GCP muss einem Projekt zugeordnet sein, klicke also oben Links auf das Projekt dropdown und erstelle (gegebenenfalls) ein neues Projekt

4. **Erstellung einer neuen VM:**

    - Klicke auf die Schaltfläche "Navigation" (Hamburger-Symbol) links oben in der Konsole.
    - Wähle "Compute Engine" aus dem Menü "Compute" aus.

5. **Erstellung der VM:**

    - Klicke auf "VM-Instanzen".
    - Klicke auf "Instanz erstellen".

5. **Konfiguration der VM:**

    - Gib einen Namen für deine VM ein, z. B. "meine-vm".
    - Wähle die Region und Zone aus, in der deine VM gehostet werden soll. Wähle `europe-west-3` für Frankfurt.
    - Wähle den gewünschten VM-Typ aus. Die VM-Größe beeinflusst die Leistung und den Preis deiner VM:
        - Wähle die `E2` General Purpose Konfiguration aus.
        - Wähle den `e2-micro` Machine Type
    - Nutze die Default Einstellung `standard` als `VM-provisioning model`
    - Setze folgende Einstellungen für die `Boot Disk`
        - Size: 10GB
        - Image: Debian GNU/Linux 11 bullseye
    - Die restlichen Regeln für Firewall usw. kannst du mit default Werten belassen

6. **Hinzufügen von Festplatten:**

    - Du kannst optional Festplatten hinzufügen und ihre Größe sowie ihren Typ (Standard oder SSD) konfigurieren. Dies hängt von deinen Anforderungen ab.

7. **Starten der VM:**

    - Klicke auf "Erstellen", um die VM zu erstellen. Die Bereitstellung deiner VM kann einige Minuten dauern.

8. **Herstellen einer Verbindung zur VM:**

    - Nachdem die VM erstellt wurde, klicke auf den Namen deiner VM in der Liste der VM-Instanzen.
    - Klicke auf die Schaltfläche "SSH" neben deiner VM, um eine sichere Verbindung zur VM herzustellen.

9. **Arbeiten mit der VM:**

    Du hast jetzt eine funktionierende VM in Google Cloud erstellt und kannst sie wie einen normalen Computer verwenden. Installiere Software, führe Befehle aus und entwickle Anwendungen nach Bedarf.

10. **Beenden der VM:**

    Wenn du deine VM nicht mehr benötigst, vergiss nicht, sie zu beenden, um Kosten zu sparen. Du kannst dies in der Compute Engine-Konsole tun.

