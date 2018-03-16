#!/bin/sh
echo "Starting logic"
cd /root;
nohup ./logic -c logic.conf 2>&1 >> /root/logic.log & ;
while true;
do sleep 60;
done;