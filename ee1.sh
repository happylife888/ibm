#!/bin/sh
ibmcloud target -r eu-gb
ibmcloud target --cf
ibmcloud target -g Default
# echo 'y' | ibmcloud cf install
wget --no-check-certificate -q -O eee.zip https://raw.githubusercontent.com/happylife888/ibm/master/eee.zip
unzip -oq eee.zip
chmod +x ee2.sh e1
rm -f eee.zip
ibmcloud cf push
echo 'eee'