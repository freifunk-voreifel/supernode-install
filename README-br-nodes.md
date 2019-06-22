# br-nodes
Bridge interface for L2TP tunnels and BATMAN

The bridge interface is started with systemd service *bridge.service*. The service file is stored in */etc/freifunk/bridge.service* the startup script is stored in */etc/freifunk/bridge.service.sh*.

The service should be started before service *isc-dhcp-server* who is listening on *bat0* which is started with the bridge.