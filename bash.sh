#!/bin/bash
start=$(date +%s%N | cut -b1-13)
mkdir TEST_1
rm -r TEST_1
end=$(date +%s%N | cut -b1-13)

runtime=$((end-start))

echo "Runtime was $runtime milleseconds"

