#!/bin/sh
echo "Starting job";
cd /root ;
nohup ./job -c job.conf 2>&1 >> /root/logs/job.log & ;
while true;
do sleep 1;
done;