#!/bin/bash

curl -o /home/aleks/currency.txt https://myfin.by/currency/minsk

USD=`cat currency.txt | sed -e 's/<\/a>/ /g; s/<\/td>/ /g; s/<td>/ /g;'`





echo $USD

