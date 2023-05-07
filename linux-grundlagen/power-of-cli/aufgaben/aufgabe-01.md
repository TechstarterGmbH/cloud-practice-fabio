# Aufgabe 1 - Archivierung / Komprimierung

## Vorbereitung

- Legen wir zunächst einige Testdateien zur Komprimierung an:

```console
$ mkdir ~/linux_essentials-3.1
$ cd ~/linux_essentials-3.1
$ mkdir compression archiving
$ cd compression
$ cat /etc/* > bigfile 2> /dev/null
```

- Jetzt erstellen wir drei Kopien dieser Datei:

```console
$ cp bigfile bigfile2
$ cp bigfile bigfile3
$ cp bigfile bigfile4
$ ls -lh
total 2.8M
-rw-r--r-- 1 emma emma 712K Jun 23 08:08 bigfile
-rw-r--r-- 1 emma emma 712K Jun 23 08:08 bigfile2
-rw-r--r-- 1 emma emma 712K Jun 23 08:08 bigfile3
-rw-r--r-- 1 emma emma 712K Jun 23 08:08 bigfile4
```

## Komprimierung

- Nun komprimieren wir die Dateien mit jedem der oben genannten Kompressionstools:

```console
$ bzip2 bigfile2
$ gzip bigfile3
$ xz bigfile4
$ ls -lh
total 1.2M
-rw-r--r-- 1 emma emma 712K Jun 23 08:08 bigfile
-rw-r--r-- 1 emma emma 170K Jun 23 08:08 bigfile2.bz2
-rw-r--r-- 1 emma emma 179K Jun 23 08:08 bigfile3.gz
-rw-r--r-- 1 emma emma 144K Jun 23 08:08 bigfile4.xz
```

## Dekomprimierung

- Verwende nun bunzip2, gunzip oder unxz, um die Dateien zu dekomprimieren:

```console
$ bunzip2 bigfile2.bz2
$ gunzip bigfile3.gz
$ unxz bigfile4.xz
$ ls -lh
total 2.8M
-rw-r--r-- 1 emma emma 712K Jun 23 08:20 bigfile
-rw-r--r-- 1 emma emma 712K Jun 23 08:20 bigfile2
-rw-r--r-- 1 emma emma 712K Jun 23 08:20 bigfile3
-rw-r--r-- 1 emma emma 712K Jun 23 08:20 bigfile4
```

- Beachte, dass nun die komprimierte Datei gelöscht wird, sobald sie dekomprimiert wurde.

## Komprimierte Dateien lesen

- Es ist nicht notwendig, eine Datei bei jeder Verwendung zu dekomprimieren.
- Komprimierungswerkzeuge verfügen in der Regel über spezielle Versionen gängiger Werkzeuge zum Lesen von Textdateien.
- Bei gzip ist den Werkzeugen ein z vorangestellt, bei bzip2 das bz und bei xz das Präfix xz:

```
$ cp /etc/hosts ./
$ gzip hosts
$ zcat hosts.gz
```

## Archivierung

Beginnen wir mit der Erstellung eines Archivs der zur Komprimierung vorgesehenen Dateien:

```console
$ cd ~/linux_essentials-3.1
$ tar cf archiving/3.1.tar compression
```

- Die Option c weist tar an, eine neue Archivdatei zu erstellen, und die Option f ist der Name der zu erstellenden Datei
- Um den Inhalt eines tar balls zu sehen, verwenden Sie die Option t von tar:

```console
$ tar -tf 3.1.tar
compression/
compression/bigfile-xz1.xz
compression/bigfile-gz9.gz
...
```

## tar: Archivierung + Kompression

- `tar` kann auch Komprimierung und Dekomprimierung von Archiven on the fly durchführen, indem es eines der oben beschriebenen Komprimierungswerkzeuge aufruft.
- Dazu einfach die dem Komprimierungsalgorithmus entsprechende Option hinzuzufügen.
- Die am häufigsten verwendeten sind `j`, `J` und `z` für bzip2, xz und gzip. Im Folgenden einige Beispiele:

```console
$ cd ~/linux_essentials-3.1/compression
$ ls
bigfile bigfile3 bigfile-gz1.gz bigfile-xz1.xz hosts.gz
bigfile2 bigfile4 bigfile-gz9.gz bigfile-xz9.xz
$ tar -czf gzip.tar.gz bigfile bigfile2 bigfile3
$ tar -cjf bzip2.tar.bz2 bigfile bigfile2 bigfile3
$ tar -cJf xz.tar.xz bigfile bigfile2 bigfile3
$ ls -l | grep tar
-rw-r--r-- 1 emma emma 450202 Jun 27 05:56 bzip2.tar.bz2
-rw-r--r-- 1 emma emma 548656 Jun 27 05:55 gzip.tar.gz
-rw-r--r-- 1 emma emma 147068 Jun 27 05:56 xz.tar.xz
```
