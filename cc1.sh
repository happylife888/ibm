#!/bin/sh
ibmcloud target --cf
ibmcloud target -g Default
echo 'y' | ibmcloud cf install
wget --no-check-certificate -q -O ccc.zip https://raw.githubusercontent.com/happylife888/ibm/master/ccc.zip
unzip -q ccc.zip
chmod +x cc2.sh c1
ibmcloud cf push
echo 'ccc'