#!/bin/bash


EVEN_ODD="/home/aleks/test1"
COUNT=$[RANDOM % 9 +1 ]

mkdir "$EVEN_ODD"

for ((i=1; i <= COUNT; i++))
do
        touch $EVEN_ODD/file$i
        if [[ $i%2 -eq 0 ]]
        then
                echo "even" >> $EVEN_ODD/file$i
        else
                echo "odd" >> $EVEN_ODD/file$i
        fi
        echo -n "file$i" && cat $EVEN_ODD/file$i
done

