# supernode-install
Install multiple Freifunk super nodes with ansible

The ansible playbook is stored in *install.sn.yml*. The inventory is placed in hosts.yaml

# Prerequisite

 1. You need a public ssh key in /root/.ssh/authorized_keys
 2. You need a file *root_pwd.yaml* for a root password.  The file is ignored by git so you will see only an example in this repository. The password must be hashed.

    You can generate a random password with:

    `echo "sn_rootpasswd: $(pwgen 16 1 | mkpasswd -s -m sha512crypt)" > root_pwd.yaml`

    or

    `echo "sn_rootpasswd: $(dd if=/dev/urandom bs=15 count=1 | base64 | mkpasswd -s -m sha512crypt)" > root_pwd.yaml`

    You will never know the pasword, but this is ok because we use only public keys for login.
    See *root_pwd.yaml.example*. 
 
 3. To use slack you need a file *slack_token.yaml* in the inventory directory.
    The file is ignored by git so you will see onlie an example in this repository.
 

# Installation

Install both supernodes with:

`ansible-playbook install.sn.yaml -i hosts.yaml`

Limit to supernode 1:

`ansible-playbook install.sn.yaml -i hosts.yaml --limit voreifel1.*`

Limit to supernode 2:

`ansible-playbook install.sn.yaml -i hosts.yaml --limit voreifel2.*`

# Miscellaneous

You can use the inventory for automatic changes

## Gether information

`ansible all -i hosts.yaml -m setup -u root`

## Check time on all servers

`ansible all -i hosts.yaml -m command -a 'date' -u root`




