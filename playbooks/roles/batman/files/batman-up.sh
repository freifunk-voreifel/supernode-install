#!/bin/bash

#Start batman on bridge of hood

ACTION="$1"
BATDEV="$2"

# Load bat device  configuration

. $(dirname $0)/bat-$BATDEV.conf

# IPv4
# IPv4Net
# BRCAST
# MAC

IP=/sbin/ip
BATCTL=/usr/sbin/batctl
EBT=/sbin/ebtables

# Load bat device  configuration

. $(dirname $0)/bat-$BATDEV.conf

case $ACTION in

start)

  $BATCTL -m $BATDEV if add mesh-$BATDEV
  $BATCTL -m $BATDEV gw_mode server

  $IP link set up dev mesh-$BATDEV
  $IP link set address $MAC dev $BATDEV
  $IP link set up dev $BATDEV

  $IP addr add $IPv4 broadcast $BRCAST dev $BATDEV
  $IP -6 addr add $IPv6 dev $BATDEV
  ;;

stop)
  $BATCTL -m $BATDEV if del mesh-$BATDEV
  ;;
  
esac
