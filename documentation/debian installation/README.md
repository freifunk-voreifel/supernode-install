# Debina 9 installation

## Boot from installation media 

We boot the virtual server from a Debian 9 installation DVD / CD

![Bild 1: Debian install boot screen](0001.png)

## Select lauguage, location and keyboard language

![Bild 2: Installation](0002.png)

![Bild 3: Installation](0003.png)

![Bild 4: Installation](0004.png)

## Wait, wait 
![Bild 5: Installation](0005.png)

## Wait for network configuration

The automatic network configuration needs a DHCP server,  
![Bild 6: Installation](0006.png)

wich we don't supply.

![Bild 8: Installation](0008.png)

## Manuell network configuration

We must configure our network manually.

![Bild 9: Installation](0009.png)

We use a network 46.4.156.112/28. Oure first supernode gets the address **46.4.156.121**.

![Bild 10: Installation](0010.png)

Our network has 16 IPv4 addresses. The CDIR is /28 and the netmask is **255.255.255.240**.

![Bild 11: Installation](0011.png)

Our default gateway is 46.4.156.113.

![Bild 12: Installation](0012.png)

We used the DNS swerver from our provider to keep network traffic to a minimum.

![Bild 13: Installation](0013.png)

The first supernode is named **voreifel1** after our community.
![Bild 14: Installation](0014.png)

The FQDN our community is **freifunk-rhein-sieg.net**. 

Be aware: It's *Dot net* not *dot de*. 

![Bild 15: Installation](0015.png)

## Root password 

We have to set and *remember* a password for **root**. We will override this password later in the installation to allow only access with ssh-keys. 

![Bild 16: Installation](0016.png)

## User installation

Set the full username.

![Bild 17: Installation](0017.png)

the username,

![Bild 18: Installation](0018.png)

and the users password.

![Bild 19: Installation](0019.png)

## Hard drive partition

![Bild 20: Installation](0020.png)

## We will use the whole partiotion

For a supernode 30 GByte is more than enough. The next steps are explained by the wizzard. if you have difficulties, with these steps: Do't try to install a supernode.
 
![Bild 21: Installation](0021.png)

![Bild 22: Installation](0022.png)

![Bild 23: Installation](0023.png)

![Bild 24: Installation](0024.png)

![Bild 25: Installation](0025.png)

![Bild 26: Installation](0026.png)

![Bild 27: Installation](0027.png)

We need no additional CD / DVD.

![Bild 28: Installation](0028.png)

## Packet Manager configuration

We use a mirror to update the server. To reduce network traffic and improve speed use a mirror nearby. 

![Bild 29: Installation](0029.png)

![Bild 30: Installation](0030.png)

If you have a proxy running, include here. We need and we have not proxy.

![Bild 31: Installation](0031.png)

Wait until packet manager is configured. This may take some time. Time to get a fresh coffee.

![Bild 32: Installation](0032.png)

Wait a little bit longer. 

![Bild 33: Installation](0033.png)

There ist no need for us to take part.

![Bild 34: Installation](0034.png)

Wait a little bit.

![Bild 35: Installation](0035.png)

Select the software. We need **standard tools** and **SSH-server**. You may install a **web-server** at this stage. We need not a desktop ernvironment.

![Bild 36: Installation](0036.png)

Time for more coffee.

![Bild 37: Installation](0037.png)

![Bild 38: Installation](0038.png)

## Master Boot Record (MBR)

We will install GRUB into the MBR.

![Bild 39: Installation](0039.png)

![Bild 40: Installation](0040.png)

![Bild 41: Installation](0041.png)

Now finished the installation and can reboot into the new sytsem. Unfortunately it is a bit tricky to change the boot sequence at this  state of the running system in proxmox.

![Bild 42: Installation](0042.png)

You must finde a way to shutdown the virtual machine and change the boot sequence. we will keep the DVD for further installation.

![Bild 43: Installation](0043.png)

## First boot

Up it goes.

![Bild 44: Installation](0044.png)

## Next steps

The next steps are decribed in "Makeing a Debian Ansible compatible".
 