#!/bin/bash
 

curl https://www.atlassian.com/continuous-delivery/continuous-integration | grep -oi "continuous integration" | wc -l

curl https://www.atlassian.com/continuous-delivery/continuous-integration | sed -En 's/(continuous integration)/\n\1\n/igp'


wget -O test1.txt https://www.atlassian.com/continuous-delivery/continuous-integration | grep -oi  "continuous integration" test1.txt | wc -l
