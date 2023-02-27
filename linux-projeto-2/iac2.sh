#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/rsgamboa/MangaFlix/archive/refs/heads/main.zip
unzip main.zip
mv linux-site-dio-main/* /var/www/html/
rm -rf linux-site-dio-main/

echo "Fim....."