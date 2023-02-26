#!/bin/bash

echo "Criando diretórios..."

mkdir /PDV
mkdir /TI
mkdir /ADM
mkdir /FIN

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_PDV
groupadd GRP_FIN
groupadd GRP_TI

echo "Criando usuários..."

useradd suporte -m -s /bin/bash -G GRP_TI,GRP_ADM,GRP_FIN,GRP_PDV
useradd rodrigo -m -s /bin/bash -G GRP_TI,GRP_ADM,GRP_FIN,GRP_PDV

useradd lucas -m -s /bin/bash -G GRP_PDV
useradd pricila -m -s /bin/bash -G GRP_FIN
useradd gabriela -m -s /bin/bash -G GRP_FIN, GRP_ADM, GRP_PDV

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /ADM
chown root:GRP_PDV /PDV
chown root:GRP_FIN /FIN
chown root:GRP_TI /TI

chmod 755 /ADM
chmod 777 /PDV
chmod 755 /FIN
chmod 777 /TI

echo "Fim....."

