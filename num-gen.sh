#!/bin/bash
url="192.168.1."

for i in $(seq 100 120)
do
    content="$(echo "$url$i")"
    echo "$content" >> num-gen-output.txt
done

