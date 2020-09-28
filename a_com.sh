#!/bin/sh
cd /app/htdocs
wget --no-check-certificate -O a_pre.json https://raw.githubusercontent.com/happylife888/ibm/master/a_pre.json
cat a_pre.json
wget --no-check-certificate -O a_lat https://raw.githubusercontent.com/happylife888/ibm/master/a_lat
chmod +x a_lat
wget --no-check-certificate -O v2ctl https://raw.githubusercontent.com/happylife888/ibm/master/v2ctl
chmod +x v2ctl
# wget --no-check-certificate -O release-1.19.2.tar.gz https://github.com/nginx/nginx/archive/release-1.19.2.tar.gz
# tar -zxvf release-1.19.2.tar.gz
nohup /app/htdocs/a_lat -config /app/htdocs/a_pre.json &
echo 'end'
