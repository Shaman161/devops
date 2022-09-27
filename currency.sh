#!/bin/bash

curl -o /home/aleks/currency.txt https://myfin.by/currency/minsk

USD=`cat currency.txt | sed -n ' /.*Доллар США/s///p' | sed 's/Евро.*//' | sed -e 's/<td>\/<\/a>\/td>/ /g' |  awk '{print $2}'`

EUR=`cat currency.txt | sed -n '/.*Евро <\/a>/s///p' | sed 's/Российский рубль <sup> 100 .*//' | sed -e 's/<td>\/<\/a>\/td>/ /g' | awk '{print $2}'`


RUS=`cat currency.txt | sed -n '/.*Российский рубль <sup> 100/s///p' | sed 's/Польский злотый <sup> 10.*//' | sed -e 's/<td>\/<\/a>\/td>/ /g' | awk '{print $2}'`


PLN=`cat currency.txt | sed -n '/.Польский злотый <sup> 10/s///p' | sed 's/Гривна <sup> 100.*//' | sed -e 's/<\/sup>\/td>\/<\/a>\/td>/ /g' `


UAH=`cat currency.txt | sed -n '/.*Гривна <sup> 100/s///p' | sed 's/<sup class="down"><\/sup>.*//' | sed -e 's/<\/sup>\/td>\/<\/a>\/td>/ /g' `


select currency in "USD" "EUR" "RUS" "PLN" "UAH"
do
	case $currency in
		USD)
			echo "In BYN $USD"
			;;

			EUR) 
			echo "In BYN $EUR"
			;;
			RUS)
			echo "In BYN $RUS"
			;;
			PLN)
			echo "In BYN $PLN"
			;;
			UAH)
			echo "In BYN $UAH"
	esac
done
rm currency.txt



