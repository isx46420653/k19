# ldapserver:entrypoint

Genereu una nova imatge ldapserver19:entrypoint amb les característiques descrites a continuació:

## Volumes ldap-data

La base de dades ldap es desa en un volum anomenat ldap-data.
La configuració ldap es desa en un volum anomenat ldap-config.

## Entrypoint ldap

Modificar la imatge ldapserver:latest (ldapserver:entrypoint) de manera que tingui un script startup.sh de entrypoint que permeti:

initdb: inicialitzar la base de dades ldap sense dades i engegar el servei.

initdbedt: initiclitzar la base de dades ldap amb les dades per defecte usuals i engegar el servei.

listdn: llistar els dn de la base de ddaes ldap usant una comanda de baix nivell “slapcat | grep dn”.

start: engegar el servei ldap (la base de dades, amb dades o sense, ha d’existir prèviament). Aquesta és 'opció per defecte-

\*: qualsevol altre conjunt de paràmetres que es passin com a CMDi s’executarà usant eval.

Cal usar un volume anomenat ldap-data per a les dades i un volume anomenat ldap-config per a la configuració ldap.  L’script startup.sh ha de mostrar un debug de tot el que va fent si la variable d’entorn DEBUG és superior a zero. Cal passar aquesta variable amb l’ordre docker run amb un valor de 1 per verificar el funcionament de l’script.

# Crear els volums de Docker

docker volume create ldap-data
docker volume create ldap-config

sudo ls /var/lib/docker/volumes/ldap-data
sudo ls /var/lib/docker/volumes/ldap-config

Iniciar el Docker:

docker run --rm --name ldapserver.edt.org -h ldapserver.edt.org -v ldap-data:/var/lib/ldap/ -v ldap-config:/etc/openldap -p 389:389 -d isx46420653/ldapserver19:entrypoint initdb
