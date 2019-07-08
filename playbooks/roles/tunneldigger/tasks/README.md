# Verzeichnis tasks

Erstellt von **Thomas Arend** am *2019-07-08*

# Kurzbeschreibung

Wir nutzen *tunneldigger* für die Verbindung Routers mit dem *Supernode*.

Dazu werden zwei Verzeichnisse */srv/tunneldigger* und */etc/tunneldigger* angelegt. Damit wird Installation und Konfiguration voneinander getrennt.

In */svr/tunneldigger* wird *Tunneldigger* installiert, in */etc/tunneldigger* konfiguriert.

*Tunneldigger* wird aus dem Git des Nutzers *github_user* bezogen. Es ist ratsam und weise, bei dieser Software eine eigene Kopie im *git* vorzuhalten.

Vor der Installation muss ein laufender (alter) *Tunneldigger* gestoppt werden. Andernfalls kommt es zu Fehlern, weil der gesperrte Dateien geändert werden sollen. 

Die Konfigurationsdateien der Hoods werden in */etc/tunneldigger/hood-\*.conf* geschrieben.

Die Startup Scripte werden ebenfalls nach */etc/tunneldigger/*

Der Tunneldigger wird mittels eine service */etc/systemd/system/tunneldigger@.service* gestartet. Der Aufruf erwartet als Parameter den Namespace der hood.

Achtung: Alle Hoods nutzen die selben Scripte für session-up, ...

### Beispiel:

    systemctl start tunneldigger@voreifel.service


Zum Schluss werden die Hoods *enabled* und *restarted*.

# ToDo

Nur entsprechend markierte hoods starten, andere stoppen.

Angepasste Scripte für einzelne Hoods.
