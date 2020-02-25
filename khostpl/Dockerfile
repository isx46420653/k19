# Kerberos Server
FROM fedora:27
LABEL version="1.0"
LABEL author="Pau Martín"
LABEL subject="kerberos"
RUN dnf -y install krb5-workstation pam_krb5 passwd nss-pam-ldapd authconfig
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker
CMD /opt/docker/startup.sh
