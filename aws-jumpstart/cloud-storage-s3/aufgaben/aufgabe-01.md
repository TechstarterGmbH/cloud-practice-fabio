## Aufgabe 1: Cloud Storage

## 1. Welche Speicherklassen bietet Amazon S3 an und für welche Art von Daten sind sie am besten geeignet?

1. Normal, Sometimes, Rarely, Almost Never. Normal eignet sich am besten für häufig abgerufene Daten, während Sometimes, Rarely und Almost Never für selten oder nie abgerufene Daten geeignet sind.
2. Warm, Cold, Freeze. Warm eignet sich am besten für häufig abgerufene Daten, während Cold und Freeze für selten oder nie abgerufene Daten geeignet sind.
3. Standard, Infrequent Access, Archive, Deep Archive. Standard eignet sich am besten für häufig abgerufene Daten, während Infrequent Access, Archive und Deep Archive für selten oder nie abgerufene Daten geeignet sind.
4. Primary, Secondary, Tertiary. Primary eignet sich am besten für häufig abgerufene Daten, während Secondary und Tertiary für selten oder nie abgerufene Daten geeignet sind.

## 2. Was ist der Zweck von S3 Intelligent-Tiering und wie funktioniert es?

1. S3 Intelligent-Tiering ist eine Methode, um Daten in unterschiedlichen Speicherklassen zu speichern, basierend auf ihrer Aktivität. Daten werden automatisch in die am besten geeignete Speicherklassen verschoben, um Kosten zu optimieren und gleichzeitig den Zugriff auf Daten zu gewährleisten.
2. S3 Intelligent-Tiering ist eine Methode, um Daten auf mehreren geografisch verteilten Servern zu speichern, um Redundanz und hohe Verfügbarkeit zu gewährleisten.
3. S3 Intelligent-Tiering ist eine Methode, um Daten in der Cloud zu sichern und vor unbefugtem Zugriff zu schützen.
4. S3 Intelligent-Tiering ist eine Methode, um Daten in Echtzeit zu analysieren und Erkenntnisse aus den Daten zu gewinnen.

## 3. Welche Speicherklassen von Amazon S3 eignen sich am besten für Archivdaten, die selten oder nie abgerufen werden müssen?

1. Standard
2. Infrequent Access
3. Glacier
4. One Zone-Infrequent Access

## 4. Was ist das Maximum an Daten, das Sie in einem einzigen Objekt in Amazon S3 speichern können?

1. 1 GB
2. 5 TB
3. 11 TB
4. Unbegrenzt

## 5. Welche Methode kannst du verwenden, um den Zugriff auf ein Objekt in Amazon S3 zu beschränken? (Mehrere Antworten möglich)

1. Security Groups
2. Network Access Control Lists (NACLs)
3. Access Control Lists (ACLs)
4. Bucket-Policies

## 6. Was sind Vorteile von Amazon S3-Versionierung?

1. Es ermöglicht, verschiedene Versionen desselben Objekts zu speichern, um Datenverlust zu verhindern.
2. Es bietet eine automatische Verschlüsselung von Objekten für mehr Datensicherheit.
3. Es ermöglicht, Objekte in unterschiedlichen Speicherklassen zu speichern, um Kosten zu optimieren.
4. Es bietet eine einfache Möglichkeit, den Zugriff auf Objekte für verschiedene Benutzer zu verwalten.

## 7. Welche Funktion von Amazon S3 ermöglicht es, gezielt Daten in einer Bucket-Speicherklassen zu ändern, um Kosten zu optimieren?

a. S3 Bucket-Logging
b. S3 Inventory
c. S3 Lifecycle-Regeln / Lifecycle Policies
d. S3 Object Tagging