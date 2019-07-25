# Tunneldigger auf Freifunk-Supernode installieren und einrichten

Tunneldigger wird abweichend von den meisten Anleitungen in */srv/tunneldigger* installiert. Durch den Aufruf von *git clone* wird er *normalerweise* oft */srv/tunneldigger/tunneldigger* installiert.

Die Einrichtung erfolgt mit den Werten der Varibalen **hood:**, die es ermöglicht beliebig viele Hoods zu konfigurieren.

Jede Hood erhält einen eindeutigen Namen und eine eindeutige Nummer.
Eine Hood benötigt einen eindeutigen Port, auf über den die Clients den L2TP Tunnel aufbauen. Die Portnummer ergibt sich aus 20000 + hoods[name].number. Ausnahme voreifel = 53842.

Jeder Hood wird ein batman device bat{{ hoods[name].number}} und eine Bridge mesh-nodes{{ hoods[name].number}} zugeordnet, auf der das batman-device gestartet wird. 

Auf dem bat-device eines Hoods verteilt isc-dhcp-server die IP-Adressen aus dem Bereich 10.152.{{ 8 * hoods[name].number }}.0/21. Damit stehen auf einer Hood IPv4 etwa 2.000 IP-Adressen für Clients zur Verfügung.

Die unteren ersten 256 Adressen (254 Nutzbar) werden für feste IP-Adressvergabe reserviert. 10.152.n.1 ist für das defaultgateway auf der Node reserveriert. Auf der Adresse .2 laufen die Serverdienst, die sonst nicht erreichbar wären, weil der Node die local-node Adresse abfängt.

Jeder eingehende L2TP Tunnel wird über die Portnummer einer Hood zugeordnet.
