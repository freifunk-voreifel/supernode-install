# Tunneldigger and B.A.T.M.A.N-ADV
Bridges are used to connect L2TP tunnels and BATMAN interfaces and separate the devices in small domains.

Freifunk Voreifel uses a subnet 10.152.64.0/18

The subnet is devided in sub-subnet /20 and /21.
```
| n  | subnet          | usage                    |
+----+-----------------+--------------------------+
|  8 | 10.152.64.0/20  | Meckenheim               |
| 10 | 10.152.80.0/20  | Rheinbach                |
| 12 | 10.152.96.0/21  | unused                   |
| 13 | 10.152.104.0/21 | old Meckenheim subnet    |
| 14 | 10.152.112.0/21 | old domain Rheinbach     |
| 15 | 10.152.120.0/21 | testfunk                 |
```

For each subnet the third octet is n *8. 

Example: n = 13 => 8 * 13 = 104 => 10.152.104.0/21 

For each tunneldigger hood a bridge interface br-bat<n> is started. The bridge is added to a batman interface bat<n>.

The interfaces are started with a servide batman@bat<n>.service

is started with systemd service *bridge.service*. The service file is stored in */etc/freifunk/bridge.service* the startup script is stored in */etc/freifunk/batman-.service.sh*.

The service should be started before service *isc-dhcp-server* who is listening on the *bat<n>* interfaces.