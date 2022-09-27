#!/bin/bash

echo -n "row: "
read Rows
echo -n "line: "
read Line
row=($[$RANDOM % 9 +1])
line=($[$RANDOM %9 +1])
function array {
	for (( i=0; i < $row; i++))
	do
		arr[i]=$[$RANDOM %9 +1 ]
	done
	echo ${arr[*]}
}

for (( l=1; l <= $line; l++ ))
do
	array
done

