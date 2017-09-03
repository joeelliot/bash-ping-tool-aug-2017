#!/bin/bash

while :
do

for i in $(cat num-gen-output.txt); do

  DATE=$(date +%d-%m-%Y" "%H:%M:%S);
  IPZ="$i"
  RESULT="$(ping -c 1 -W 1 $IPZ | grep transm | awk '{print $4}')"

   if [ $RESULT -gt 0 ];then
    echo "$DATE $IPZ ON"
   else
    echo "$DATE $IPZ -----OFF-----"
   fi

done
    echo "----"
    sleep 15

done
