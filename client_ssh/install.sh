#/bin/bash

# Copiem els fitxers de configuració
cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/ssh_config /etc/ssh/ssh_config
cp /opt/docker/sshd_config /etc/ssh/sshd_config

# Hem de canviar el /etc/hosts amb la IP d'Amazon
