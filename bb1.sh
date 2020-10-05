#!/bin/sh
ibmcloud target --cf
ibmcloud target -g Default
echo 'y' | ibmcloud cf install
wget --no-check-certificate -O bbb.zip https://raw.githubusercontent.com/happylife888/ibm/master/bbb.zip
unzip -q bbb.zip
rm -f b1 b11 b2 b22
chmod +x bb2.sh
ibmcloud cf push
echo 'bbb'