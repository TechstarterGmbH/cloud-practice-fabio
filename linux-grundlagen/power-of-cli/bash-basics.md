# Eine Einführung in Bash-Scripting

- Bash-Scripting ist eine Möglichkeit, um komplexe Aufgaben auf einem Linux- oder Unix-basierten Betriebssystem zu automatisieren.
- Bash ist eine Skriptsprache, die in der Shell (Kommandozeile) ausgeführt wird.
- Bash-Scripting kann nützlich sein, wenn man wiederkehrende Aufgaben hat oder wenn man eine Reihe von Befehlen in einer bestimmten Reihenfolge ausführen möchte.

## Was ist Bash?

- Bash ist eine Abkürzung für "Bourne-Again Shell".
- Es ist eine Shell, welche auf den meisten Linux- und Unix-basierten Betriebssystemen standardmäßig installiert ist.
- Bash ermöglicht es dem Benutzer, Befehle auf der Kommandozeile einzugeben und auszuführen.
- Es ist auch eine Skriptsprache, mit der man komplexe Aufgaben automatisieren kann.

## Was ist ein Shebang?

- Ein Shebang (auch Shebang genannt) ist der erste Zeilenkommentar in einem Bash-Skript.
- Diese Zeile gibt dem System an, welche Shell das Skript ausführen soll.
- Die Shebang-Zeile beginnt normalerweise mit dem Pfad zur Bash-Shell (/bin/bash)
- Die Shebang-Zeile sieht normalerweise so aus:

```bash
#!/bin/bash
```

## Wie führt man ein Skript aus?

- Um ein Bash-Skript auszuführen, muss man es zuerst ausführbar machen (Berechtigung setzen)
- Das geht mit dem `chmod` command
- Danach kann man das Skript mit dem Befehl `./scriptname.sh` ausführen.

## Fazit

Bash-Scripting ist ein leistungsfähiges Werkzeug, mit dem man wiederkehrende Aufgaben automatisieren und komplexe Aufgaben vereinfachen kann.
Mit ein wenig Übung kannst du schnell deine eigenen Skripte schreiben und damit Zeit sparen.
Verwende die Shebang-Zeile, um sicherzustellen, dass das Skript in der gewünschten Shell ausgeführt wird, und mache das Skript ausführbar, bevor du es ausführst.

Für mehr Informationen, schaue dir das [Bash Cheat Sheet](./cheat-sheat/bash.sh) an.
