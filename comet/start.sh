#!/bin/bash
cd /root;
nohup ./comet -c comet.conf 2>&1 >> /root/comet.log & ;
while true;
do sleep 60;
done;