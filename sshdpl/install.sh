#/bin/bash

# Copiem els fitxer de configuració de Kerberos
cp /opt/docker/krb5.conf /etc/krb5.conf

# Permetem la autenticació amd LDAP
bash /opt/docker/auth.sh

# Creem els usuaris locals
useradd local1
useradd local2
useradd local3
useradd local4
useradd local5
useradd local6
echo "local1" | passwd --stdin local1
echo "local2" | passwd --stdin local2
echo "local3" | passwd --stdin local3
echo "local4" | passwd --stdin local4
echo "local5" | passwd --stdin local5
echo "local6" | passwd --stdin local6

# Generem el Keytab
kadmin -p pau/admin -w kpau ktadd -k /etc/krb5.keytab host/sshd.edt.org

# Kerberitzem el servei
cp /opt/docker/sshd_config /etc/ssh/sshd_config
cp /opt/docker/ssh_config /etc/ssh/ssh_config
