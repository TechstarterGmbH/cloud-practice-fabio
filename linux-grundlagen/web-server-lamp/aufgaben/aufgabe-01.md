# Aufgabe 1 

## Szenario

Du wurdest von einem mittelständischen Unternehmen beauftragt eine einfache Website zu erstellen, um die Internetpräsenz zu verbessern.
Um es der Geschäftsführerin zu ermöglichen selbst kleine Änderungen übernehmen zu können, habt ihr beschlossen dafür Wordpress zu verwenden.

## Ziel

Am Ende dieser Aufgabe wirst du eine funktionierende [Wordpress](https://de.wordpress.org/) Anwendung auf einer EC2 Instanz hosten.

## Vorbereitungen

### VPC

- Stelle sicher, dass:
    - das default VPC in deinem Account richtig angelegt wurde
    - DNS resolution und DNS hostnames für das default VPC aktiviert sind

### (Optional) Key Pair für SSH

- Falls du planst dich über die Console mit deiner EC2 Instanz zu verbinden, erstelle jetzt einen neuen Security key
- *Ansonsten kannst du auch EC2 Instance Connect direkt im Browser verwenden*

### EC2 Instanz

- Erstelle eine EC2 Instanz mit den folgenden Eigenschaften:
    - AMI: Ubuntu 22.04
    - (Optional) Key Pair: (aus letzem Schritt)
    - Security Group Ingress:
        - SSH 0.0.0.0/0
        - HTTP 0.0.0.0/0
        - HTTPS 0.0.0.0/0

### Verbindung

- Verbinde dich mit deiner EC2 Instanz, entweder über SSH oder EC2 Instanz Connect

## Installation

### Update

- Führe ein Update und Upgrade durch:
- Installiere unzip

```bash
sudo apt update -y && sudo apt upgrade -y
sudo apt install unzip
```

### Apache

- Installiere den Apache Server 

```bash
sudo apt install -y apache2
```

- Aktiviere den Apache Service auch für künftige Restarts, hierfür wird das Init System SystemD verwendet

```bash
sudo systemctl enable apache2
```

- *Beachte, das cheat-sheet zu systemctl für weitere wichtige commands*
- Wenn du jetzt die IP-Adresse(mit HTTP!!! ) in deinem Browser aufrufst, sollte die Apache default page zu sehen sein


### MySQL

- Installiere jetzt die MySQL Datenbank nach dem selben Prinzip

```bash
sudo apt install -y mysql-server
```

- Teste die Verfügbarkeit der Datenbank

```bash
sudo systemctl status mysql
sudo mysql
# Jetzt sollte sich die MySQL Console öffnen
exit
```

### PHP

- Um Wordpress ausführen zu können muss noch PHP installiert werden, außerdem werden noch weitere PHP-Plugins benötigt

```bash
sudo apt install -y php libapache2-mod-php
sudo apt install php-{json,zip,curl,dom,exif,imagick,mbstring,xml,mysql}
```

- Überprüfe deine PHP Installation


```bash
# Zeigt PHP Version
php --version
# Zeigt alle installierten Module
php -m
```

## Konfiguration

### MySQL

- Wordpress braucht eine eigene Datenbank und einen eigenen Benutzer mit entsprechenden Berechtigungen
- Öffne den Mysql client mit `sudo mysql`

```sql
CREATE USER 'wordpress_user'@'localhost' IDENTIFIED BY 'supersecretpassword1234';
CREATE DATABASE wordpress_db;
GRANT ALL PRIVILEGES ON wordpress_db.* TO 'wordpress_user'@'localhost';
FLUSH PRIVILEGES;
```

- Mit `exit;` kannst du den Mysql client wieder verlassen


### Wordpress

- Downloade jetzt die aktuelle Version von Wordpress mit wget und bereite das Webroot Verzeichnis vor

```bash
cd /tmp
wget https://wordpress.org/latest.zip
unzip latest.zip
sudo mv wordpress/ /var/www/html/
sudo chown -R www-data: /var/www/html
sudo chmod -R 0755 /var/www/html
```

### Apache

- Jetzt einfach noch einen neuen Virtual Host für Apache erstellen:
- Die Apache config liegt unter `/etc/apache2/`, wobei alle verfügbaren vhosts unter `sites-available` liegen und dann nach dem aktivieren automatisch nach `sites-enabled` gesymlinkt werden

```bash
cd /etc/apache2/sites-available
touch wordpress.vhosts.conf
sudo vim wordpress.vhosts.conf
```

- Schaue dir hierfür die Datei `wordpress.vhosts.conf` in diesem Repository an
- **WICHTIG** Trage bei Servername den **public** DNS Name deiner EC2 Instanz ein
- Speichere die Datei unter /etc/apache2/sites-available/wordpress.conf

```bash
sudo a2ensite wordpress.conf
#Enable rewrite module

sudo a2enmod rewrite
#Disable the default Apache test page

sudo a2dissite 000-default.conf
#Restart the Apache webserver to apply the changes:

sudo systemctl restart apache2
```

- Rufe jetzt die DNS Adresse der EC2 Instanz in deinem Browser auf (achte darauf http zu verwenden)


### Wordpress Init

- Im letzten Schritt noch über das Web UI die Installation abschließen
- Die Datenbank Optionen kannst du dem SQL Statement entnehmen
