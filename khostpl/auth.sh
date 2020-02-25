authconfig  --enableshadow --enablelocauthorize --enableldap \
            --ldapserver='ldapserver' --ldapbase='dc=edt,dc=org' \
            --enablekrb5 --krb5kdc='kserver.edt.org' \
            --krb5adminserver='kserver.edt.org' --krb5realm='EDT.ORG' \
             --enablemkhomedir --updateall
