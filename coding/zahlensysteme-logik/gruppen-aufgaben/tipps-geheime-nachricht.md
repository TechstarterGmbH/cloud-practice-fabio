# Tipps für Geheime Nachricht CTF

1. Schaue dir die Zahlen genau an, welches Zahlensystem könnte verwendet worden sein

2. Schaue dir folgende Tabelle an. Gibt es einen Standard der dir bekannt vorkommt?

3. Folgende python Funktionen könnten dir helfen:

```python

    int()
    char()
```

```
+-----+---------+---------------------------+
| Dec |Character|       Description         |
+-----+---------+---------------------------+
|   0 | NUL     | Null                      |
|   1 | SOH     | Start of Heading          |
|   2 | STX     | Start of Text             |
|   3 | ETX     | End of Text               |
|   4 | EOT     | End of Transmission       |
|   5 | ENQ     | Enquiry                   |
|   6 | ACK     | Acknowledge               |
|   7 | BEL     | Bell                      |
|   8 | BS      | Backspace                 |
|   9 | HT      | Horizontal Tab            |
|  10 | LF      | NL Line Feed, New Line    |
|  11 | VT      | Vertical Tab              |
|  12 | FF      | NP Form Feed, New Page    |
|  13 | CR      | Carriage Return           |
|  14 | SO      | Shift Out                 |
|  15 | SI      | Shift In                  |
|  16 | DLE     | Data Link Escape          |
|  17 | DC1     | Device Control 1          |
|  18 | DC2     | Device Control 2          |
|  19 | DC3     | Device Control 3          |
|  20 | DC4     | Device Control 4          |
|  21 | NAK     | Negative Acknowledge      |
|  22 | SYN     | Synchronous Idle          |
|  23 | ETB     | End of Transmission Block |
|  24 | CAN     | Cancel                    |
|  25 | EM      | End of Medium             |
|  26 | SUB     | Substitute                |
|  27 | ESC     | Escape                    |
|  28 | FS      | File Separator            |
|  29 | GS      | Group Separator           |
|  30 | RS      | Record Separator          |
|  31 | US      | Unit Separator            |
|  32 | (Space) | Space                     |
|  33 | !       | Exclamation Mark          |
|  34 | "       | Double Quote              |
|  35 | #       | Hash or Number            |
|  36 | $       | Dollar Sign               |
|  37 | %       | Percentage                |
|  38 | &       | Ampersand                 |
|  39 | '       | Single Quote              |
|  40 | (       | Left Parenthesis          |
|  41 | )       | Right Parenthesis         |
|  42 | *       | Asterisk                  |
|  43 | +       | Plus Sign                 |
|  44 | ,       | Comma                     |
|  45 | -       | Minus Sign                |
|  46 | .       | Period                    |
|  47 | /       | Slash                     |
|  48 | 0       | Zero                      |
|  49 | 1       | Number One                |
|  50 | 2       | Number Two                |
|  51 | 3       | Number Three              |
|  52 | 4       | Number Four               |
|  53 | 5       | Number Five               |
|  54 | 6       | Number Six                |
|  55 | 7       | Number Seven              |
|  56 | 8       | Number Eight              |
|  57 | 9       | Number Nine               |
|  58 | :       | Colon                     |
|  59 | ;       | Semicolon                 |
|  60 | <       | Less Than                 |
|  61 | =       | Equals Sign               |
|  62 | >       | Greater Than              |
|  63 | ?       | Question Mark             |
|  64 | @       | At Sign                   |
|  65 | A       | Upper Case Letter A       |
|  66 | B       | Upper Case Letter B       |
|  67 | C       | Upper Case Letter C       |
|  68 | D       | Upper Case Letter D       |
|  69 | E       | Upper Case Letter E       |
|  70 | F       | Upper Case Letter F       |
|  71 | G       | Upper Case Letter G       |
|  72 | H       | Upper Case Letter H       |
|  73 | I       | Upper Case Letter I       |
|  74 | J       | Upper Case Letter J       |
|  75 | K       | Upper Case Letter K       |
|  76 | L       | Upper Case Letter L       |
|  77 | M       | Upper Case Letter M       |
|  78 | N       | Upper Case Letter N       |
|  79 | O       | Upper Case Letter O       |
|  80 | P       | Upper Case Letter P       |
|  81 | Q       | Upper Case Letter Q       |
|  82 | R       | Upper Case Letter R       |
|  83 | S       | Upper Case Letter S       |
|  84 | T       | Upper Case Letter T       |
|  85 | U       | Upper Case Letter U       |
|  86 | V       | Upper Case Letter V       |
|  87 | W       | Upper Case Letter W       |
|  88 | X       | Upper Case Letter X       |
|  89 | Y       | Upper Case Letter Y       |
|  90 | Z       | Upper Case Letter Z       |
|  91 | [       | Left Square Bracket       |
|  92 | \       | Backslash                 |
|  93 | ]       | Right Square Bracket      |
|  94 | ^       | Caret or Circumflex       |
|  95 | _       | Underscore                |
|  96 | `       | Grave Accent              |
|  97 | a       | Lower Case Letter a       |
|  98 | b       | Lower Case Letter b       |
|  99 | c       | Lower Case Letter c       |
| 100 | d       | Lower Case Letter d       |
| 101 | e       | Lower Case Letter e       |
| 102 | f       | Lower Case Letter f       |
| 103 | g       | Lower Case Letter g       |
| 104 | h       | Lower Case Letter h       |
| 105 | i       | Lower Case Letter i       |
| 106 | j       | Lower Case Letter j       |
| 107 | k       | Lower Case Letter k       |
| 108 | l       | Lower Case Letter l       |
| 109 | m       | Lower Case Letter m       |
| 110 | n       | Lower Case Letter n       |
| 111 | o       | Lower Case Letter o       |
| 112 | p       | Lower Case Letter p       |
| 113 | q       | Lower Case Letter q       |
| 114 | r       | Lower Case Letter r       |
| 115 | s       | Lower Case Letter s       |
| 116 | t       | Lower Case Letter t       |
| 117 | u       | Lower Case Letter u       |
| 118 | v       | Lower Case Letter v       |
| 119 | w       | Lower Case Letter w       |
| 120 | x       | Lower Case Letter x       |
| 121 | y       | Lower Case Letter y       |
| 122 | z       | Lower Case Letter z       |
| 123 | {       | Left Curly Bracket        |
| 124 | |       | Vertical Bar              |
| 125 | }       | Right Curly Bracket       |
| 126 | ~       | Tilde                     |
| 127 | DEL     | Delete                    |
+-----+---------+---------------------------+
```

