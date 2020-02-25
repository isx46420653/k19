#/bin/bash

# Copiem els fitxers de configuració
cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/hosts /etc/hosts
cp /opt/docker/ldap.conf /etc/openldap/ldap.conf


# Autenticació amb LDAP
cp /opt/docker/login.defs /etc/login.defs
cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf

# Permetem la autenticació
bash /opt/docker/auth.sh
