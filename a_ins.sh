#!/bin/sh
wget --no-check-certificate -O a_com.sh https://raw.githubusercontent.com/happylife888/ibm/master/a_com.sh
chmod +x ./a_com.sh
wget --no-check-certificate -O manifest.yml https://raw.githubusercontent.com/happylife888/ibm/master/manifest.yml
ibmcloud target --cf
ibmcloud cf push
