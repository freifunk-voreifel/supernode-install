#!/bin/bash
INTERFACE="$3"
MAC="$8"
brctl=/sbin/brctl

BLOCKLISTE=$(/bin/cat /srv/tunneldigger/tunneldigger-blacklist)

# Blockliste Freifunk-Troisdorf
# wget -q -O /srv/tunneldigger/tunneldigger-blacklist https://raw.githubusercontent.com/Freifunk-Troisdorf/tunneldigger-blockliste/master/macs.txt


/bin/ip link set dev $INTERFACE up mtu 1312

for i in $BLOCKLISTE;
do
    if [[ $i == $MAC ]]; then
      exit 1
    fi
done

$brctl addif br-nodes $INTERFACE
