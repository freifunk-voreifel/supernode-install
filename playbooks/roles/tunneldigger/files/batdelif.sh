#!/bin/bash
INTERFACE="$3"

/sbin/brctl delif mesh-nodes $INTERFACE
