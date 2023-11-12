# CloudWatch Praxis

## Ziel

- Erstellung einer EC2 Instanz
- CloudWatch Metrics Basics
- CloudWatch Alarms
- Installation des CloudWatch Agents
- CloudWatch Detailed Monitoring
- CloudWatch Alarm

## Schritte

### 1. Erstelle ein EC2 Instanz

- Name: MetricsInstance
- AMI: AmazonLinux2
- Type: t2.micro
- Key Pair: Create a new Key Pair
- Firewall: `Create security group`, allow SSH
- Advanced:
    - Detailed CloudWatch monitoring: enabled

#### 1.1 Installiere das stress tool

- Führe folgenden Befehl aus:
```sh
sudo dnf update
sudo dnf install stress -y
```

#### 1.2 Starte einen CPU Stress Test

```sh
stress --cpu 1 --timeout 600
```

### 2. CloudWatch Metrics Basics

**CloudWatch Basic Metrics sind immer für jede EC2 Instanz aktiviert, allerdings nur pro 5 Minuten**

- Navigiere zum CloudWatch Service -> Metrics -> Explorer
- Metrics: `All EC2 Instance Metrics`
- From: `Instance Id: ` + Instance Id der EC2 Instanz einfügen

#### 2.1 Untersuchung der Basic Metrics

- Schaue dir die `CPUUtilization` an
- Diese sollte aufgrund des Stress Tests steil ansteigen
- Beim klick auf die drei Punkte kann die Metrik in ein Dashboard eingefügt werden

### 3. CloudWatch Alarm

Da hohe CPU Auslastung auf Dauer zu Problemen führen kann, wollen wir nun einen Alarm erstellen.

- Navigiere also jetzt zu Alarms -> All Alarms

#### 3.1 Erstelle den Alarm

- Klicke auf `Create alarm`
- Klicke auf `Select Metric`
- EC2 -> Per Instance Metrics
- Suche nach `CPUUtilization`
- Wähle den Eintrag der Liste mit der InstanceId deiner Instance
- Klicke auf `Select Metrics`

#### 3.2 Alarm Condition

*Wenn die CPUUtilization größer als 40 ist, schlage Alarm*

- Threshold type: Static (basierend auf statischem Wert oder Anomaly Detection AI)
- Condition: Greater
- than: 40

#### 3.3 Actions

- Alarm State Trigger: In alarm
- SNS Topic: Create a new topic
- Email Endpoint: Deine Email für benachrichtigungen
- `Create topic`
- Next

#### 3.4 Name

- Alert name: MyEc2CpuAlert

#### 3.5 Übersicht

- Stelle sicher, dass alle Einstellungen korrekt sind
- `Create alarm`

#### 3.6 Test

- Starte den Stress Test erneut und beobachte den Alarm in der Übersicht

### 4. CloudWatch Agent

- Um weitere Metriken (wie Memory Nutzung, ...) zu bekommen, müssen wir den CloudWatch Agent installieren

#### 4.1 Install CloudWatch Agent

```sh
sudo yum install amazon-cloudwatch-agent
```

#### 4.2 Instance Role

- Erstelle eine neue IAM Rolle mit Trusted Entity Type: EC2
- Füge der Rolle folgende managed Policy hinzu: **CloudWatchAgentServerPolicy**
- Nenne die Rolle: `CloudWatchAgentServerRole`
- Weise die Rolle deiner EC2 Instanz zu

#### 4.3 Konfiguration Wizzard

```sh
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-config-wizard
```

- Einfach Enter Klicken und dann bei Traces mit XTraces 2 für no

#### 4.4 Starte den Agent

```sh
sudo mkdir -p /usr/share/collectd/
sudo touch /usr/share/collectd/types.db
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:/opt/aws/amazon-cloudwatch-agent/bin/config.json -s
```

#### 4.5 Test

```sh
amazon-cloudwatch-agent-ctl -m ec2 -a status
```

Kommen die Metriken für RAM nun in CloudWatch Metrics an? Schaue im `CWAgent` Namespace
