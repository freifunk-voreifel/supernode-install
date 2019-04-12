# Zuweimung der Tunnel-Adressen

[..]

IPv4s könnt ihr uns einzeln announcen, bei IPv6 nehmen wir alles von /48 bis /56.

Bitte beachten, bei euren aktuellen Größe können wir euch nicht mehr IPv4s geben. Ihr solltet also bei Gateway Änderungen eher größere statt mehrere nehmen.

Eure IPv4:

185.66.193.126/31

Eure IPv6:
2a03:2260:301a::/48

Unsere Endpunkte:
```
    bb-a.ak.ber 185.66.195.0
    bb-b.ak.ber 185.66.195.1
    bb-a.ix.dus 185.66.193.0
    bb-b.ix.dus 185.66.193.1
    bb-a.fra2.fra 185.66.194.0
    bb-b.fra2.fra 185.66.194.1
```

Mailingliste für Wartungsankündigungen:

https://mailman.freifunk-rheinland.net/pipermail/backbone-announce/

Tunnel Details, angegeben ist jeweils unsere IP im Tunnel, eure ist immer +1. Im ersten Tunnel also die 100.64.10.43 und die 2a03:2260:0:51e::2.

## GRE-Tunnel zu Voreifel 1  

 meckenheim1 bzw voreifel1 (46.4.156.121)


    bb-a.ak.ber
    100.64.10.42/31
    2a03:2260:0:51e::1/64

    bb-b.ak.ber
    100.64.10.48/31
    2a03:2260:0:521::1/64

    bb-a.ix.dus
    100.64.10.46/31
    2a03:2260:0:520::1/64

    bb-b.ix.dus
    100.64.10.52/31
    2a03:2260:0:523::1/64

    bb-a.fra2.fra
    100.64.10.44/31
    2a03:2260:0:51f::1/64

    bb-b.fra2.fra
    100.64.10.50/31
    2a03:2260:0:522::1/64


## GRE-Tunnel zu Voreifel 2 

meckenheim2 bzw voreifel2 (46.4.156.122)


    bb-a.ak.ber
    100.64.10.54/31
    2a03:2260:0:524::1/64

    bb-b.ak.ber
    100.64.10.60/31
    2a03:2260:0:527::1/64

    bb-a.ix.dus
    100.64.10.58/31
    2a03:2260:0:526::1/64

    bb-b.ix.dus
    100.64.10.64/31
    2a03:2260:0:529::1/64

    bb-a.fra2.fra
    100.64.10.56/31
    2a03:2260:0:525::1/64
    
    bb-b.fra2.fra
    100.64.10.62/31
    2a03:2260:0:528::1/64



## Beispiel

Zusätzlich noch ein Beispiel für eine GRE Interface Konfiguration unter debian:


    auto bb-a-ak-ber
    iface bb-a-ak-ber inet tunnel
        mode gre
        netmask 255.255.255.254
        address 100.64.10.43
        dstaddr 100.64.10.42
        local 46.4.156.121
        endpoint 185.66.195.0
        ttl 64
        mtu 1400
    iface bb-a-ak-ber inet6 static
        address 2a03:2260:0:51e::2/64
        
[..]
