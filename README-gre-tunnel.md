# GRE-Tunnel
GRE-Tunnels to FFRL

The tunnels are installed with the task *tsk_gre-tunnels.yaml* in the role *supernode*.

Every GRE tunnnel to the FFRL is defined in a separate file in the directory */etc/interfaced.d/*. 

File names:

    (ber|dus|fra)_(a|b)

The tunnel settings are defined in the dict variable *gre* in the hosts_vars file for each host.

Tunnels are prefixed with *gre_* which can be changed in *group_vars/supernodes.yaml*. 