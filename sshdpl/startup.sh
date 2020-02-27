#!/bin/bash

bash install.sh
/sbin/nslcd
/sbin/nscd

# Engeguem el servidor SSH
/usr/bin/ssh-keygen -A
/sbin/sshd -D
