#!/bin/bash

#Remove old folders
rm -r /publico /adm /ven /sec

#remove old users
userdel -rf carlos
userdel -rf maria
userdel -rf joao
userdel -rf debora
userdel -rf sebastiana
userdel -rf roberto
userdel -rf josefina
userdel -rf amanda
userdel -rf rogerio

#remove old groups
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

#Create folders
mkdir /publico /adm /ven /sec

#Create groups
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#Create users
useradd carlos -m -c "carlos" -s /bin/bash -p $(perl -e 'print crypt($ARGV[0], "password")' 'senha123') -G GRP_ADM
useradd maria -m -c "carlos" -s /bin/bash -p $(perl -e 'print crypt($ARGV[0], "password")' 'senha123') -G GRP_ADM
useradd joao -m -c "carlos" -s /bin/bash -p $(perl -e 'print crypt($ARGV[0], "password")' 'senha123') -G GRP_ADM
useradd debora -m -c "carlos" -s /bin/bash -p $(perl -e 'print crypt($ARGV[0], "password")' 'senha123') -G GRP_VEN
useradd sebastiana -m -c "carlos" -s /bin/bash -p $(perl -e 'print crypt($ARGV[0], "password")' 'senha123') -G GRP_VEN
useradd roberto -m -c "carlos" -s /bin/bash -p $(perl -e 'print crypt($ARGV[0], "password")' 'senha123') -G GRP_VEN
useradd josefina -m -c "carlos" -s /bin/bash -p $(perl -e 'print crypt($ARGV[0], "password")' 'senha123') -G GRP_SEC
useradd amanda -m -c "carlos" -s /bin/bash -p $(perl -e 'print crypt($ARGV[0], "password")' 'senha123') -G GRP_SEC
useradd rogerio -m -c "carlos" -s /bin/bash -p $(perl -e 'print crypt($ARGV[0], "password")' 'senha123') -G GRP_SEC

#Define folders owner and group
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#Define folders permission
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
