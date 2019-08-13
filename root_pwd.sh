#!/bin/bash
# (c) 2019 Thoams Arend
# 

PWFILE="playbooks/roles/ansible-compatible/vars/root_pwd.yaml"

echo "Generating random password for user root and store it in root_pwd.yaml"

if type -p pwgen >/dev/null
then
    # if pwgen is installed, we will use it
    echo "sn_rootpasswd: $(pwgen 16 1 | mkpasswd -s -m sha-512)" > "$PWFILE"
else
    # As an alternate we use dd and base64
    echo "sn_rootpasswd: $(dd if=/dev/urandom bs=24 count=1 | base64 | sed 's#/=##g' | mkpasswd -s -m sha-512)" > "$PWFILE"
fi
