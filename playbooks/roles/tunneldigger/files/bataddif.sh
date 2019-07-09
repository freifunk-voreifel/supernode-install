#!/bin/bash
INTERFACE="$3"
MAC="$8"
brctl=/sbin/brctl

BLOCKLISTE=$(/bin/cat /etc/tunneldigger/blocklist)

/bin/ip link set dev $INTERFACE up mtu 1312

for i in $BLOCKLISTE;
do
    if [[ $i == $MAC ]]; then
      exit 1
    fi
done

$brctl addif br-nodes $INTERFACE
