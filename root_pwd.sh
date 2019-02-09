#!/bin/bash

echo "sn_rootpasswd: $(pwgen 16 1 | mkpasswd -s -m sha512crypt)" > root_pwd.yaml
