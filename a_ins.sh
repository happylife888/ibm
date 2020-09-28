#!/bin/sh
ibmcloud target --cf
wget --no-check-certificate -O manifest.yml https://raw.githubusercontent.com/happylife888/ibm/master/manifest.yml
wget --no-check-certificate -O index.php https://raw.githubusercontent.com/happylife888/ibm/master/index.php
wget --no-check-certificate -O a_com.sh https://raw.githubusercontent.com/happylife888/ibm/master/a_com.sh
chmod +x a_com.sh
ibmcloud cf push
echo 'lat'
