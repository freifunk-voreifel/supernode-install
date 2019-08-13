# supernode-install

Install multiple Freifunk super nodes with ansible

The ansible playbook is stored in *playbooks/pb_install_all.yaml*. The inventory is placed in hosts.yaml

# Prerequisite and Installation

These scripts are testet with and require ansible >= 2.8.3.

For more information [Installation](Installation.md).

# Description

The ansible scripts are testes with two hosts as supernodes. They should work with any number of supernodes.

Every domain we uses a separate Tunneldigger hood. Therefore we will use hood and domain synonym.

We provide 6 domains

* Meckenheim // 8
* Rheinbach // 10
* Meckenheim Old // 13
* Rheinbach Old // 14
* Testfunk // 15

## Caveats

The supernodes must run on the same switch because the mesh networks of the domains hoods are connected via a VLAN interface for each domain. In this case we use the primary interface. This was a quick and easy solution.

## ToDo

Connect the hoods on the supernodes via L2TP or GRE tunneling.