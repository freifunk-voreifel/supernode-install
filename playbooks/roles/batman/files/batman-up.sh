#!/bin/bash

#Start batman on bridge of hood

ACTION="$1"
BATDEV="$2"
IPv4="$3"
BRCAST="$4"
IPv6="$5"
MAC="$6"


IP=/sbin/ip
BATCTL=/usr/sbin/batctl
EBT=/sbin/ebtables

case $ACTION in

start)

  $BATCTL -m $BATDEV if add br-$BATDEV
  $BATCTL -m $BATDEV gw_mode server

  $IP link set up dev br-$BATDEV
  $IP link set address MAC dev $BATDEV
  $IP link set up dev $BATDEV

  $IP addr add $IPv4 broadcast $BRCAST dev $BATDEV
  $IP -6 addr add $IPv6 dev $BATDEV
  ;;

stop)
  $BATCTL -m $BATDEV if del br-$BATDEV
  ;;
  
esac
