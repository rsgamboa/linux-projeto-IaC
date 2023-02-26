#!/bin/bash

echo "Criando diretórios..."

mkdir /PDV
mkdir /ti
mkdir /adm
mkdir /fin

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_PDV
groupadd GRP_FIN
groupadd GRP_TI

echo "Criando usuários..."

useradd suporte -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_TI, GRP_ADM, GRP_FIN, GRP_PDV
useradd rodrigo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_TI, GRP_ADM, GRP_FIN, GRP_PDV

useradd lucas -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_PDV
useradd pricila -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_FIN
useradd gabriela -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_FIN, GRP_ADM, GRP_PDV

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_PDV /PDV
chown root:GRP_FIN /fin
chown root:GRP_TI /ti

chmod 755 /adm
chmod 777 /PDV
chmod 755 /fin
chmod 777 /ti

echo "Fim....."

