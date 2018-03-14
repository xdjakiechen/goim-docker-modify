#!/bin/bash
echo "Starting Kafka";
cd /root/kafka;
nohup nohup ./kafka-server-start.sh ../config/server.properties 2>&1 >> /root/kafka/kafka.log & ;
while true;
do sleep 60;
done;