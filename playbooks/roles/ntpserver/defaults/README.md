# Verzeichnis defaults

Erstellt von **Thomas Arend** am *2019-07-08*

# Achtung, dies ist ein **Muster!**

This file contains the NTP-server from different providers.

## Hetzner

We use the IPv4-address instead of the FQDN. In case you use FQDN it can be resolved to a IPv6 address. IPv6 traffic is directed over our GRE tunnels to Freifunk Rheinland because our server has no IPv6 address. This causes a high and avoidable traffic. 
