---

class: invert

---

# Terraform Module

---

## Erste Schritte

---

- **Was sind Terraform Module?**
    - Terraform Module sind wiederverwendbare und parametrisierte Codeeinheiten, die dazu dienen, Infrastrukturkomponenten in Terraform zu definieren.

---

- **Warum Terraform Module verwenden?**
    - Erlaubt die Strukturierung von Terraform-Konfigurationen in wiederverwendbare Einheiten.
    - Verbessert die Lesbarkeit, Wartbarkeit und Zusammenarbeit in großen Infrastrukturprojekten.
    - Fördert bewährte Methoden wie die DRY (Don't Repeat Yourself) Prinzipien.

---

## Grundlagen der Erstellung

---

- **Ordnerstruktur eines Moduls**
    - Ein Terraform Modul ist in einem separaten Ordner organisiert.
    - Typischerweise enthält es Dateien wie `main.tf`, `variables.tf`, und `outputs.tf`.

---

- **`main.tf`: Ressourcenkonfiguration**
    - Definiert die eigentlichen Ressourcen, die das Modul erstellen soll.

---

- **`variables.tf`: Eingabevariablen**
    - Enthält die Definition von Eingabevariablen, die es ermöglichen, das Modul zu parametrisieren.

---

- **`outputs.tf`: Ausgabevariablen**
    - Definiert Ausgabevariablen, die von anderen Modulen oder Konfigurationen referenziert werden können.

---

## Verwendung von Modulen

---

- **Modulquellen**
    - Terraform Module können lokal oder remote referenziert werden, zum Beispiel über Git-Repositories oder die Terraform Registry.

---

- **Einbindung in Konfigurationen**
    - In einer Terraform-Konfiguration wird ein Modul durch die Angabe der Modulquelle und das Setzen der benötigten Variablen eingebunden.

---

### Beispiel:

```terraform
module "example" {
  source = "./modules/vpc"

  var1   = "value1"
  var2   = "value2"
}
```

---

## Best Practices

---

- **Modulversionierung**
    - Empfehlung zur Festlegung von Modulversionen, um die Reproduzierbarkeit von Infrastrukturänderungen sicherzustellen.

---

- **Dokumentation**
    - Gute Dokumentation ist entscheidend für die Benutzung und Wartung von Terraform Modulen. Nutzen Sie README-Dateien und Kommentare.

---

- **Tests**
    - Implementierung von Tests für Module, um sicherzustellen, dass sie wie erwartet funktionieren.

---

## Let's try it out!
