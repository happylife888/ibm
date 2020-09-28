#!/bin/sh

cd /home/yes222

wget --no-check-certificate -O manifest.yml https://raw.githubusercontent.com/happylife888/ibm/master/manifest.yml

wget --no-check-certificate -O caddy_2.1.1_linux_amd64.tar.gz https://github.com/caddyserver/caddy/releases/download/v2.1.1/caddy_2.1.1_linux_amd64.tar.gz
tar -zxvf caddy_2.1.1_linux_amd64.tar.gz -C /app/htdocs

ibmcloud target --cf
ibmcloud cf push



: << 'COMMENT'
wget --no-check-certificate -O a_lat https://raw.githubusercontent.com/happylife888/ibm/master/a_lat
chmod +x a_lat
wget --no-check-certificate -O index.php https://raw.githubusercontent.com/happylife888/ibm/master/index.php
wget --no-check-certificate -O a_com.sh https://raw.githubusercontent.com/happylife888/ibm/master/a_com.sh
chmod +x a_com.sh
wget --no-check-certificate -O manifest.yml https://raw.githubusercontent.com/happylife888/ibm/master/manifest.yml
mkdir vcap
cd vcap
mkdir app
cd app
cp /home/yes222/a_com.sh ./
# cd /home/yes222
ibmcloud target --cf
ibmcloud cf push yes222
COMMENT



echo 'lat'
