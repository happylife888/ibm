#!/bin/sh
cd /app
mkdir a_rot
cd a_rot
wget --no-check-certificate -O index.html https://raw.githubusercontent.com/happylife888/ibm/master/index.html

cd /app
mkdir a_all
cd a_all
wget --no-check-certificate -O a_lat https://raw.githubusercontent.com/happylife888/ibm/master/a_lat
chmod +x a_lat
wget --no-check-certificate -O v2ctl https://raw.githubusercontent.com/happylife888/ibm/master/v2ctl
chmod +x v2ctl
wget --no-check-certificate -O a_pre.json https://raw.githubusercontent.com/happylife888/ibm/master/a_pre.json
wget --no-check-certificate -O a_cad https://raw.githubusercontent.com/happylife888/ibm/master/a_cad

rm -rf /app/htdocs/init

cd /app
wget --no-check-certificate -O a_cad.tar.gz https://github.com/caddyserver/caddy/releases/download/v2.1.1/caddy_2.1.1_linux_amd64.tar.gz
tar -zxvf a_cad.tar.gz -C /app/htdocs
rm -f a_cad.tar.gz

nohup /app/a_all/a_lat -config /app/a_all/a_pre.json> /app/a_all/a_log 2>&1 &
/app/htdocs/caddy -conf="/app/a_all/a_cad"
