# NTP server
Our supernodes work as NTP servers

The supernodes are also NTP time servers for the network. This reduces the traffic through the backbone.

The supernodes should use good and fast NTP servers their local network from the provider.

There are default server for some providers defined in the file *ntpserver/deaults/main.yaml*

The provider of the server is defined as a variable *provider* in *host_vars/<inventory_short_name>*
