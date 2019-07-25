# Tunneldigger and B.A.T.M.A.N-ADV
Bridges are used to connect L2TP tunnels and BATMAN interfaces and separate the devices in small domains.

Freifunk Voreifel uses the subnet 10.152.64.0/18

This subnet is devided in sub-subnet /20 and /21 as follows:

```
| n  | subnet          | usage                    |
+----+-----------------+--------------------------+
| <8 | 10.152.64.0/18  | andere community         |
|  8 | 10.152.64.0/20  | Meckenheim               |
| 10 | 10.152.80.0/20  | Rheinbach                |
| 12 | 10.152.96.0/21  | unused                   |
| 13 | 10.152.104.0/21 | old Meckenheim subnet    |
| 14 | 10.152.112.0/21 | old domain Rheinbach     |
| 15 | 10.152.120.0/21 | testfunk                 |
```
Due to historical reasons we start numbering with 8.

For each subnet the third octet is n *8.

Example: n = 13 => 8 * 13 = 104 => 10.152.104.0/21 

Each subnet is assocciated with one tunneldigger hood. Tunneldigger is listenning on port 20000 + n.

For each tunneldigger hood a bridge interface mesh-bat<n> is started. The bridge is added to a batman interface bat<n>.

The interfaces are started with a servide batman@bat<n>.service

is started with systemd service *bridge.service*. The service file is stored in */etc/freifunk/bridge.service* the startup script is stored in */etc/freifunk/batman-.service.sh*.

The service should be started before service *isc-dhcp-server* who is listening on the *bat<n>* interfaces.

# gluon site.conf

Add following to the brokers section of your site.conf to connect to a hood / domain (eg. 8):

```
brokers = {
  'voreifel1.freifunk-rhein-sieg.net:20008',
  'voreifel2.freifunk-rhein-sieg.net:20008',
},
```
