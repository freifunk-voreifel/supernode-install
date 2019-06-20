#!/bin/bash

# Test network is working

echo "Ping other domwain without mark"

ping -c 4 byggvir.de

echo "Ping other domwain with mark 4, RTT should be longer than before."

ping -m 4 -c 4 byggvir.de

echo "traceroute other domwain with mark 4; packets should be passed through GRE tunnel."

traceroute --fwmark=4 byggvir.de

echo "Ping other domwain without mark"

ping -4 -c 4 byggvir.de

echo "Ping other domwain with mark 4, RTT should be longer than before."

ping -4 -m 4 -c 4 byggvir.de

echo "traceroute other domwain with mark 4; packets should be passed through GRE tunnel."

traceroute6 --fwmark=4 byggvir.de
