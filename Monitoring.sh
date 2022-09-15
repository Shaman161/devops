#!/bin/bash
echo "Process $ps"
ps haux Ou | cut '-d ' -f1 | uniq -c
echo "CPU $grep"
grep 'cpu' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}'
echo "PORTS:  $netstat"
netstat -lntu
echo "MEMORY $grep"KB
grep MemTotal /proc/meminfo | awk '{print $2}'



