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
/usr/sbin/kadmin.local -q "addprinc -pw kuser01 kuser01"
/usr/sbin/kadmin.local -q "addprinc -pw kuser02 kuser02"
/usr/sbin/kadmin.local -q "addprinc -pw kuser03 kuser03"
/usr/sbin/kadmin.local -q "addprinc -pw kuser04 kuser04"
/usr/sbin/kadmin.local -q "addprinc -pw kuser05 kuser05"
/usr/sbin/kadmin.local -q "addprinc -pw kuser06 kuser06"
/usr/sbin/kadmin.local -q "addprinc -pw kpere pere/admin"
/usr/sbin/kadmin.local -q "addprinc -pw kpau pau/admin"

# Principals del ldap
/usr/sbin/kadmin.local -q "addprinc -pw user01 user01"
/usr/sbin/kadmin.local -q "addprinc -pw user02 user02"
/usr/sbin/kadmin.local -q "addprinc -pw user03 user03"
/usr/sbin/kadmin.local -q "addprinc -pw user04 user04"
/usr/sbin/kadmin.local -q "addprinc -pw user05 user05"
/usr/sbin/kadmin.local -q "addprinc -pw user06 user06"
/usr/sbin/kadmin.local -q "addprinc -pw user07 user07"
/usr/sbin/kadmin.local -q "addprinc -pw user08 user08"
/usr/sbin/kadmin.local -q "addprinc -pw user09 user09"
/usr/sbin/kadmin.local -q "addprinc -pw user10 user10"
/usr/sbin/kadmin.local -q "addprinc -pw anna anna"
/usr/sbin/kadmin.local -q "addprinc -pw marta marta"
/usr/sbin/kadmin.local -q "addprinc -pw jordi jordi"
/usr/sbin/kadmin.local -q "addprinc -pw pau pau"
/usr/sbin/kadmin.local -q "addprinc -pw pere pere"
/usr/sbin/kadmin.local -q "addprinc -pw admin admin"

# Principal SSH
/usr/sbin/kadmin.local -q "addprinc -randkey host/sshd.edt.org"
