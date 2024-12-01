#!/bin/bash
#
# Enable SSL on LDAP 
#
echo "tls_reqcert allow" >> /etc/nslcd.conf
authconfig --enableldap --enableldapauth --ldapserver=ldaps://ldapserver --ldapbasedn="dc=example,dc=local" --enablemkhomedir --update
systemctl restart nslcd
