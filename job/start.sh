#!/bin/sh
echo "Starting job";
cd /root ;
nohup ./job -c job.conf 2>&1 >> /root/job.log & ;
while true;
do sleep 60;
done;