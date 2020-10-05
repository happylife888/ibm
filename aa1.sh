#!/bin/sh
ibmcloud target --cf
ibmcloud target -g Default
wget --no-check-certificate -O aaa.zip https://raw.githubusercontent.com/happylife888/ibm/master/aaa.zip
unzip aaa.zip
rm -f aaa.zip
chmod +x aa2.sh a1 a2
ibmcloud cf push
echo 'aaa'