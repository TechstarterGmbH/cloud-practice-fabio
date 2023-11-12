---

class: invert

---

# Observability

## AWS CloudWatch

![w:400](./imgs/logo.png)

---

### Szenario

- Startup für den Online-Verkauf von Produkten
- Infrastruktur mit mehreren Servern
- **Sichtbarkeit des aktuellen Zustands** ist entscheidend

---

### Wieso braucht man Observability?

- Früherkennung und Behebung von Fehlern
- Leistungssteigerung und Ressourcenoptimierung
- Kapazitätsplanung und Kunden-/Benutzererfahrung

---

### Wichtige Formen von Monitoring

---

#### Metrics

- Quantitative Daten (z. B. CPU, Speicher, Latenz)
- Überwachung von Ressourcenzuständen
- Visualisierung und Trendanalyse

---

#### Alerts / Notifications

- Benachrichtigungen bei Schwellenwerten oder kritischen Ereignissen
- E-Mail, SMS, Integration mit anderen Tools

---

#### Logs

- Aufzeichnung von Protokolldaten
- Fehlersuche, Diagnose und Sicherheitsüberwachung
- Leistungsstarke Such- und Filterfunktionen

---

#### Traces

- Verfolgung von Anfragen über Dienste und Ressourcen hinweg
- Identifizierung von Engpässen und Leistungsproblemen

---

# AWS CloudWatch

### Basics

- AWS-Service für Ressourcenüberwachung
- Erfassung, Speicherung und Analyse von Metriken, Logs und Traces
- Verbesserte Sichtbarkeit in der AWS-Infrastruktur

---

### CloudWatch Metrics

- Metriken für AWS-Ressourcen und -Dienste
- Automatische Datenerfassung und Speicherung
- Konfigurierbare Alarme bei Abweichungen
- Gebühren für **die Anzahl der Metriken, die du pro Monat gespeichert und abgerufen hast**.
- Die Preise variieren je nach Metriktyp und Intervall der Datenerfassung.

---

### CloudWatch Alarms

- Alarme bei Schwellenwertüberschreitungen
- Benachrichtigung über E-Mail, SMS oder SNS
- Automatische Reaktionen (z. B. Skalierung)
- Preisstruktur basiert auf der **Anzahl der aktiven Alarms** und der **Häufigkeit der Ausführung von Aktionen bei Alarmauslösung**.

---

### CloudWatch Logs

- Zentrale Protokollverwaltung und -analyse
- Unterstützung für verschiedene Datenquellen und Formate
- Echtzeit-Protokollüberwachung und Textsuche
- Die Kosten hängen von der Menge der protokollierten Daten und der Dauer ihrer Speicherung ab.
