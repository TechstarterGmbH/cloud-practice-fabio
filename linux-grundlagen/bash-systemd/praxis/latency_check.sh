#!/bin/bash

# Variablen für den Host und den Dateinamen
HOST="google.com" # Standard-Host, kann überschrieben werden
LATENCY_FILE="~/latency_data.txt" # Dateiname für die Latenzdaten

# Funktion, um die durchschnittliche Latenz zu messen
measure_latency() {
    # Führt den Ping-Befehl aus und extrahiert die durchschnittliche Latenz
    local latency=$(ping -c 5 $HOST | tail -1 | awk '{print $4}' | cut -d '/' -f 2)
    echo $latency
}

# Funktion, um die gemessene Latenz in eine Datei zu schreiben
write_latency_to_file() {
    # Ruft die Funktion measure_latency auf und leitet das Ergebnis in eine Datei um
    local latency=$(measure_latency)
    echo $latency > $LATENCY_FILE
}

# Hauptfunktion
main() {
    write_latency_to_file
}

# Ausführung der Hauptfunktion
main

