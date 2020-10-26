#!/bin/sh
ibmcloud target --cf
ibmcloud target -g Default
# echo 'y' | ibmcloud cf install
wget --no-check-certificate -q -O ddd.zip https://raw.githubusercontent.com/happylife888/ibm/master/ddd.zip
unzip -oq ddd.zip
chmod +x dd2.sh d1
rm -f ddd.zip
ibmcloud cf push
echo 'ddd'