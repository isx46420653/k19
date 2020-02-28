authconfig --enableshadow --enablelocauthorize --enableldap \
--ldapserver='ldapserver.edt.org' --ldapbase='dc=edt,dc=org' --enablemkhomedir \
--enablekrb5 --krb5kdc='kserver.edt.org' \
--krb5adminserver='kserver.edt.org' --krb5realm='EDT.ORG' \
--updateall
