# Verzeichnis defaults

Erstellt von **Thomas Arend** am *2019-07-08*

Die Hoods werden in der *dictionary* Variablen hoods gespeichert. Für jede hood wir ein Eintrags

Beispiel

    hoods:
    |
    +--hood1: 
    |  |
    |  +--namespace: "examplenamespace1"
    |     address: "{{ ansible_default_ipv4.address }}"
    |     interface: "{{ ansible_default_ipv4.alias }}"
    |     port: 20013
    |      max_tunnels: 1024
    |     port_base: 10000
    |     tunnel_id_base: 10000
    +--hood2: 
       |
       +--namespace: "examplenamespace2"
          address: "{{ ansible_default_ipv4.address }}"
          interface: "{{ ansible_default_ipv4.alias }}"
          port: 20014
          max_tunnels: 64
          port_base: 20000
          tunnel_id_base: 20000

In der Regel, aber nicht zwingend, wird die Verbindung mit der ersten Netzwerkkarte des Servers aufgebaut. 

*port_base* und *tunnel_id_base* werden für die Benennung der tunnel device (dev) benötigt. Die Bereiche der Hoods sollten (dürfen?) sich nicht überlagern.

Jede aktive hood sollte (muss?) auf einem eigenen Port laufen.

Näheres bitte in der *tunneldigger* Dokumentation nachlesen (so weit eine gibt)! 
