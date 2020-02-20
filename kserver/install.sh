#/bin/bash

# Copiem els fitxers de configuració
cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/kdc.conf /var/kerberos/krb5kdc/kdc.conf
cp /opt/docker/hosts /etc/hosts

# Creem la BD de les keys dels principals
kdb5_util create -s -P masterkey

# ACL
cp /opt/docker/kadm5.acl /var/kerberos/krb5kdc/kadm5.acl

# Creem els principals
/usr/sbin/kadmin.local -q "addprinc -pw kuser1 kuser1"
/usr/sbin/kadmin.local -q "addprinc -pw kuser2 kuser2"
/usr/sbin/kadmin.local -q "addprinc -pw kuser3 kuser3"
/usr/sbin/kadmin.local -q "addprinc -pw kuser4 kuser4"
/usr/sbin/kadmin.local -q "addprinc -pw kuser5 kuser5"
/usr/sbin/kadmin.local -q "addprinc -pw kuser6 kuser6"
/usr/sbin/kadmin.local -q "addprinc -pw kpere pere/admin"
/usr/sbin/kadmin.local -q "addprinc -pw kpau pau/admin"
/usr/sbin/kadmin.local -q "addprinc -pw kanna anna"
/usr/sbin/kadmin.local -q "addprinc -pw kmarta marta"
