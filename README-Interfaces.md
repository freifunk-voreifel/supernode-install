# Interfaces der Supernodes

Die Supernodes verfügen nur über öffentliche IPv4 Adressen. Über IPv6 siond sie nur über die GRE-Tunnel zum Freifung Rheinland e.V. (FFRL) erreichbar.

## Kurzbeschreibung der Interfaces

##Devicename: lo

Device lo 

Beispiel:

```
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet 185.66.193.126/32 scope global lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
```
      
##Erstes (physisches) Interface: ens18

Erstes physisches Interface. Auf diesem Interfaces werden die VLAN zur Verbindung der BATMAN interfaces bat[n] definiert.

###Beispiel: Voreifel1

```
2: ens18: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 26:d0:63:50:e9:c7 brd ff:ff:ff:ff:ff:ff
    inet 46.4.156.121/28 brd 46.4.156.127 scope global ens18
       valid_lft forever preferred_lft forever
    inet6 fe80::24d0:63ff:fe50:e9c7/64 scope link 
       valid_lft forever preferred_lft forever
```

##Zweites (physisches) Interface: ens19 

Das zweite pysisches Interface dient der Verbindung der beiden Supernodes untereinander. Über die IPv6 Adresse sind die Supernodes untereinander erreichbar, ohne über die GRE-Tunnel des FFRL zu gehen. Außerdem sorgt dieses Interface dafür, dass bird6 die Route akzeptiert.

###Beispiel: Voreifel1

```
3: ens19: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 4e:43:a5:78:9b:85 brd ff:ff:ff:ff:ff:ff
    inet6 2a03:2260:301a::1/48 scope global 
       valid_lft forever preferred_lft forever
    inet6 fe80::4c43:a5ff:fe78:9b85/56 scope link 
       valid_lft forever preferred_lft forever
```

##Devicename: mesh-x.[n]

VLAN zur Verbindung der BATMAN Interfaces bat[n] der Supernodes.

###Beispiel: mesh-x.15

```
20: mesh-x.15@ens18: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue master bat15 state UP group default qlen 1000
    link/ether 26:d0:63:50:e9:c7 brd ff:ff:ff:ff:ff:ff
    inet6 fe80::24d0:63ff:fe50:e9c7/64 scope link 
       valid_lft forever preferred_lft forever
```

##Devicename: l2tp[n]-[n]

Tunneldigger Interface zu einem Node.

###Beispiel: Node in der Domain / Hood 15.

```
33: l2tp15004-15004: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1438 qdisc pfifo_fast master mesh-bat15 state UNKNOWN group default qlen 1000
    link/ether 52:e6:54:83:9b:0a brd ff:ff:ff:ff:ff:ff
    inet6 fe80::50e6:54ff:fe83:9b0a/64 scope link 
       valid_lft forever preferred_lft forever
```
##Devicename: mesh-bat[n]

Bridge um die Tunneldigger Interfaces der Domain / Hood [n] zu bündeln, da BATMAN nicht mit vielen Interfaces umgehen kann.

###Beispiel: Bridge für die Domain / Hood 15.

```
5: mesh-bat15: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1438 qdisc noqueue master bat15 state UP group default qlen 1000
    link/ether a2:8c:ae:6f:15:01 brd ff:ff:ff:ff:ff:ff
    inet6 fe80::a08c:aeff:fe6f:1501/64 scope link 
       valid_lft forever preferred_lft forever

```

##Devicename: bat[n]

BATMAN Interface für die Domaine [n]

###Beispiel: Bridge für die Domain / Hood 15.

```
27: bat15: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UNKNOWN group default qlen 1000
    link/ether a2:8c:ae:6f:15:01 brd ff:ff:ff:ff:ff:ff
    inet 10.152.120.2/21 brd 10.152.127.255 scope global bat15
       valid_lft forever preferred_lft forever
    inet6 2a03:2260:301a:1500::2/64 scope global 
       valid_lft forever preferred_lft forever
    inet6 fe80::a08c:aeff:fe6f:1501/64 scope link 
       valid_lft forever preferred_lft forever
```

##Devicename gre_*

GRE Tunnel zum Freifunk Rheinland Backbone

###Beispiel: GRE Tunnel zum Backbone Berlin A

```
19: gre_ber_a@ens18: <POINTOPOINT,NOARP,UP,LOWER_UP> mtu 1400 qdisc noqueue state UNKNOWN group default qlen 1000
    link/gre 46.4.156.121 peer 185.66.195.0
    inet 100.64.10.43 peer 100.64.10.42/31 scope global gre_ber_a
       valid_lft forever preferred_lft forever
    inet6 2a03:2260:0:51e::2/64 scope global 
       valid_lft forever preferred_lft forever
    inet6 fe80::200:5efe:2e04:9c79/64 scope link 
       valid_lft forever preferred_lft forever
```