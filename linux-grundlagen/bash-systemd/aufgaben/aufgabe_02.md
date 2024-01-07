# Aufgabe 2: Praxis

## 1. Verbesserung des Scripts

1.1 Funktionen mit Argumenten

- Schreibe die `measure_latency` Funktion so um, dass der Wert für HOST nicht von der globalen Variable verwendet wird sonder als argument übergeben wird.
- Argumente werden in Funktionen wie bei Bash Scripten folgendermaßen übergeben:

```bash

log() {
    log_msg="$1"
    echo "$log_msg"
}

log "Hallo"
```

1.2 Fallback Host

- Falls der HOST nicht erreichbar ist, soll ein Fallback Host verwendet werden.
- Hierfür muss zuerst überprüft werden, ob die Latenz des ersten Hosts valide war, und falls nicht `measure_latency` erneute mit dem Fallback host aufgerufen ewrden.

## 2. (Freiwillig) CPU

- Erstelle ein neues Script, was die aktuelle CPU Auslastung misst und ebenfalls in eine Datei schreibt.

- Erstelle auch hier wieder eine SystemD Unit, welche das Script in regelmäßigen Abständen aufruft.
- Integriere auch diesen Wert in deine Prompt.

- [https://stackoverflow.com/a/9229396](https://stackoverflow.com/a/9229396)
