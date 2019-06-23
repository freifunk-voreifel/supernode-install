# GRE-Tunnel
GRE-Tunnels to FFRL

Every GRE tunnnel to the FFRL is defined in a separate file in the directory */etc/interfaced.d/*. 

File names:

    (ber|dus|fra)_(a|b)

The tunnel settings defined in the variable *gre* in the hosts_vars file for each host.

The tunnels are installed with the task *tsk_gre-tunnels.yaml* in the role *supernode*.