# Aufgabe 2 - Suchen / Extrahieren

1. Erstelle einen Ordner und navigiere hinein. Downloade die Beispiel Text Datei von folgender URL:
https://sample-videos.com/csv/Sample-Spreadsheet-5000-rows.csv
Speichere die Datei als `data.csv`

*Tipp*: Nutze das `wget` command

2. Finde alle Zeilen, in denen das Wort "IBM" vorkommt

*Tipp*: Verwende das `grep` command um im Text zu suchen

3. Wie viele Zeilen gibt es, in denen das Wort "IBM" vorkommt?

*Tipp*: Mit dem `wc -l` command koennen Zeilen gezaehlt werden

4. Erstelle eine Datei mit allen Produkten der Kategorie "Computer Peripherals"

5. Erstelle eine alphabetisch sortierte Liste aller Produkte (als Datei), die den Begriff 'books' sowohl in Groß- und Kleinschreibung matchen.

*Tipp*: Nutze folgenden command um die erste Spalte mit Nummern zu entfernen `sed 's/\(^[0-9]*,\)//g'`

6. Downloade die folgende Log Datei nach dem gleichen Prinzip als `system.log`:
https://raw.githubusercontent.com/logpai/loghub/master/Linux/Linux_2k.log

7. Erstelle eine Liste mit allen IP Adressen in `system.log`. Stelle sicher, dass keine Duplikate vorhanden sind!

```
cat system.log | grep --only-matching "\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}" | uniq | sort 

```

8. Wie oft taucht das Wort "failure" auf?

9. Finde alle Großbuchstaben


