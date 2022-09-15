#!/bin/bash
mkdir TEST1
for i in {1..10}
do
	mktemp -d 
done
prefixes=(a b c)
num_Prefixes=${#prefixes[*]}
for dir in *;
do
	cd $TEST1
	for i in {1..10}
	do
		FILENAME='mktemp -u xxxxxxxxxx."${prefixes[$((RANDOM%num_prefixes))]}"'
	done
done
