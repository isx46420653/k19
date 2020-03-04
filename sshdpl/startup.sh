#!/bin/bash

bash install.sh

# Arranquem els serveis
/sbin/nslcd
/sbin/nscd

# Engeguem el servidor SSH
/usr/bin/ssh-keygen -A
/sbin/sshd -D
