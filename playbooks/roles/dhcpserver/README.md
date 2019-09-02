# Rolle: dhcpserver

Erstellt von **Thomas Arend** am *2019-07-08*

# Kurzbeschreibung

Mit dieser Rolle werden die DHCP Server auf den Supernodes eingerichtet. Die DHCP wird auf den Domains / Hoods auf den BATMAN Interfaces bereitgestellt.

Die DHCP-Server werden im Failover Modus betrieben. Die Variabeln dazu werden in erfolgt dazu der Host-Variablen dhcp definiert.

Die Subnetze der Domains / Hoods sind in group_vars unter hoods.<hood\>.dhcp definiert.

## Voraussetzungen

Die Rolle setzt voraus, dass

- isc-dhcp-server auf den Supernodes installiert ist.
- die BATMAN Interface der Supernodes müssen miteinander verbunden sein. (Geschieht mit der Rolle interfaces mittels VLAN mesh-x.<n\>.
 

## Unterverzeichnisse

Die Rolle verwendet folgende Unterverzeichnisse

- tasks:        contains the main list of tasks to be executed by the role.
- handlers:     contains handlers, which may be used by this role or even anywhere outside this role.
- defaults:     default variables for the role.
- vars:         other variables for the role.
- files:        contains files which can be deployed via this role.
- templates:    contains templates which can be deployed via this role.
- meta:         defines some meta data for this role.

### tasks

Die Rolle dhcpserver führt Tasks aus, die wie folgt gruppiert sind:

- dhcp und dhcp 6 konfigurieren
- Subnetze für die Hoods anlegen 
- Neustart des DHCP-Server

**Näheres** zu den *tasks* findest du **im README.md** im Verzeichnis *tasks*.

### handlers

Die Fehlerbehandlung wird durch Handler in *handlers* übernommen. 

*keine*

**Näheres** zu den *handlers* findest du **im README.md** im Verzeichnis *handlers*.

### defaults / vars

Die Rolle dhcpserver nutzt folgende Variablen in *defaults* und / oder *vars*:

Die Rolle dhcpserver nutzt folgende Variablen in vars:

*keine*

**Näheres** zu den *defaults* und *variablen* findest du **im README.md** im Verzeichnis *defaults* / *handlers*.

### templates

Templates im Verzeichnis *templates* werden durch Ansible anhand der Varibalen und des Programmcodes in den Templates modifiziert und als Dateien auf das Zielsystem kopiert.

Die Rolle dhcpserver nutzt folgende Templates in *templates*:

- dhcpd6.conf.j2
- dhcpd.conf.j2
- subnet-ipv4.conf.j2

**Näheres** zu den *defaults* und *variablen* findest du **im README.md** im Verzeichnis *defaults* / *handlers*.

### files

Die Rolle dhcpserver nutzt folgende Dateien in *files*:

*keine*

**Näheres** zu den *Dateien* findest du **im README.md** im Verzeichnis *files*.

### meta

Die Rolle dhcpserver nutzt folgende Meta-Daten:

*keine*

**Näheres** zu den *Meta-Daten* findest du **im README.md** im Verzeichnis *meta*.