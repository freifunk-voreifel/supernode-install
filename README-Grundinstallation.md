# Grundinstallation

Folgende Schritte sind für eine Grundinstallation von Debian 9. 

 1. Installation eine Grundsystemes von CD / DVD  
 2. Aktualisieren des Systems
 3. Installation openssh-server
 4. Anschließend ssh public keys (für root) kopieren
 5. installation mit Ansible fortsetzen

Zu 1.: 

Partitionieren und zusätzlich zu root einen eigenen Nutzer anlegen.

Zu 2:

Ggf. unter /etc/resolv.conf den nameserver anpassen. Auf dem als Standard angenommen Router muss kein DNS laufen. 

Ggf. die Default Route prüfen, die muss nicht auf der niedrigsten Adresse (+1) des Sub-Netzes liegen.

Zu 3:

Da der oppenssh-server nicht in der Grundinstalltion enthalten ist, muss er vor der weiteren Einrichtung über ssh (Ansible) installiert werden. 
