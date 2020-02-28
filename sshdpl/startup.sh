#!/bin/bash

bash install.sh
/sbin/nslcd
/sbin/nscd

# Engeguem el servidor SSH
/usr/bin/ssh-keygen -A

# Generem el Keytab
kadmin -p pau/admin -w kpau ktadd -k /etc/krb5.keytab host/sshd.edt.org

# Arranquem el servei
/sbin/sshd -D
