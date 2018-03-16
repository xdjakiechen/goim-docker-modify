#!/bin/sh
cd /root/kafka
./kafka-topics.sh --create --zookeeper <Your Zookeeper Host and IP> --replication-factor 1 --partitions 24 --topic KafkaPushsTopic
exit
