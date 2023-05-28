## Umrechnen zwischen Zahlensystemen: Ein ausführlicher Guide

1. Konvertierung von Binär zu Dezimal:
   - Jede Binärziffer hat eine entsprechende Potenz von 2. (1, 2, 4, 8, 16, 32, 64, 128, 256, ...)
   - Multipliziere jede Binärziffer mit ihrer Potenz von 2 und addiere die Ergebnisse.
   Beispiel: 10101<sub>2</sub> in Dezimal umrechnen:

   ```
   16   8   4   2   1
   1    0   1   0   1

   16   0   4   0   1 = 21
   ```
   1 * 2<sup>4</sup> + 0 * 2<sup>3</sup> + 1 * 2<sup>2</sup> + 0 * 2<sup>1</sup> + 1 * 2<sup>0</sup> = 16 + 4 + 1 = 21

2. Konvertierung von Dezimal zu Binär:
   - Jede Binärziffer hat eine entsprechende Potenz von 2. (1, 2, 4, 8, 16, 32, 64, 128, 256, ...)
   - Finde die größte Zahl, die noch in die Ausgangszahl passt
   - Gehe nach der Reihe alle Potenzen durch und prüfe ob diese in den Rest hinein passt, falls ja subtrahier die aktuelle Zahl
   - Wiederhole den Vorgang, bis die Dezimalzahl 0 erreicht ist.
   Beispiel: 456<sub>10</sub> in Binär umrechnen:

   ```
   512  256  128  64   32   16   8    4    2    1

   Passt 512 in 456? Nein daher 0

   512  256  128  64   32   16   8    4    2    1
   0    

   Passt 256 in 456? Ja daher 1
   Und: 
   456 - 256 = 200
   Also ab jetzt mit 200 weiter rechnen!

   512  256  128  64   32   16   8    4    2    1
   0    1   

   Passt 128 in 200? Ja daher 1
   Und:
   200 - 128 = 72

   512  256  128  64   32   16   8    4    2    1
   0    1    1

   Passt 64 in 72? Ja daher 1
   Und:
   72 - 64 = 8

   512  256  128  64   32   16   8    4    2    1
   0    1    1    1

   Passt 32 in 8? Nein daher 0; Passt 16 in 7? Nein daher 0; Passt 8 in 8? Ja daher 1
   Und:
   8 - 8 = 0


   512  256  128  64   32   16   8    4    2    1
   0    1    1    1    0    0    1    0    0    0

   ```
   Binärzahl: 111001000<sub>2</sub>

3. Konvertierung von Hexadezimal zu Dezimal:
   - Jede Hexadezimalziffer hat eine entsprechende Potenz von 16. (1, 16, 256, 4.096, 65.536)
   - Multipliziere jede Hexadezimalziffer mit ihrer Potenz von 16 und addiere die Ergebnisse.
   Beispiel: 1A7<sub>16</sub> in Dezimal umrechnen:

   ```
   256  16   1
   1    A    7

   1 * 256 = 256
   

   (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A -> 10, B -> 11, C -> 12, D -> 14, E -> 15)
   A = 10 

   10 * 16 = 160


   7 * 1 = 7

   256 + 160 + 7 = 423

   ```
   1 * 16<sup>2</sup> + 10 * 16<sup>1</sup> + 7 * 16<sup>0</sup> = 256 + 160 + 7 = 423

4. Konvertierung von Dezimal zu Hexadezimal:
   - Teile die Dezimalzahl durch 16 und notiere den Rest als Hexadezimalziffer.
   - Wiederhole den Vorgang, bis die Dezimalzahl 0 erreicht ist.
   Beispiel: 423<sub>10</sub> in Hexadezimal umrechnen

   ```
   4096 256  16   1

   Wie oft passt 4096 in 423? Gar nicht, also 0

   4096 256  16   1
   0    

   Wie oft passt 256 in 423? 

   423 / 256 = 1,65..
   Daher mindestens 1 mal

   4096 256  16   1
   0    1    

   Jetzt den Rest berechnen (Beachte, dass nur mit 1 * gerechnet wird und nicht mit den eigentlich richtigen 1,65)
   423 - 1 * 256 = 167

   Also muss jetzt mit 167 weiter gerechnet werden

   Wie oft passt 16 in 167?

   167 / 16 = 10,44..
   Das heißt nächste Zahl ist 16 * 10 = 160

   Was ist 10 in Hex? A

   4096 256  16   1
   0    1    A

   Was ist der Rest?

   167 - 160 = 7

   Wie oft passt 1 in 7?
   7 mal


   4096 256  16   1
   0    1    A    7

   0x1A7
   ```


   Hexadezimalzahl: 1A7<sub>16</sub>

5. Konvertierung zwischen Binär und Hexadezimal über Dezimal:
   - Konvertiere zuerst die Binärzahl in eine Dezimalzahl und dann die Dezimalzahl in eine Hexadezimalzahl.
   - Konvertiere jeweils immer Gruppen von 4 bits (binär) und 1 zeichen (hex)
   Beispiel: 10101<sub>2</sub> in Hexadezimal umrechnen:
   Binär zu Dezimal: 10101<sub>2</sub> = 21<sub>10</sub>
   Dezimal zu Hexadezimal: 21<sub>10</sub> = 15<sub>16</sub>
   Ergebnis: 10101<sub>2</sub> = 15<sub>16</sub>

