#!/bin/bash
echo "Atualizando  oservidor "
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install install  unzip -y
echo "Baixando e copiandoos arquivos da aplicacao..."

cd /tmp
wget https://github.com/denisonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
