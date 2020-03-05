#!/bin/bash

## Install Tunneldigger

PYTHON=/usr/bin/python3

cd /srv/tunneldigger
virtualenv -p $PYTHON env_tunneldigger
cd /srv/tunneldigger
git clone https://github.com/wlanslovenija/tunneldigger.git

source env_tunneldigger/bin/activate
cd tunneldigger/broker
python setup.py install
