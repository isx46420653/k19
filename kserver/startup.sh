#!/bin/bash

bash install.sh
/usr/sbin/kadmind
/usr/sbin/krb5kdc -n
