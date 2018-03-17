#!/bin/sh
echo "Starting router"
cd /root;
nohup ./router -c router.conf 2>&1 >> /root/router.log & ;
while true;
do sleep 60;
done;