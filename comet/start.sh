#!/bin/bash
echo "Starting comet";
cd /root;
nohup ./comet -c comet.conf 2>&1 >> /root/comet.log & ;
while true;
do sleep 60;
done;