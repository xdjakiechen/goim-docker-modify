FROM anapsix/alpine-java:latest
ENV kafka_ver=2.12
ENV kafka_rel=1.0.1
RUN apk update && \
	apk add wget tar && \
	cd /root && \
	wget http://www-us.apache.org/dist/kafka/$kafka_rel/kafka_$kafka_ver-$kafka_rel.tgz && \
    tar -xzf kafka_$kafka_ver-$kafka_rel.tgz && \
    rm -rf kafka_$kafka_ver-$kafka_rel.tgz && \
	apk del wget tar && \
	\cp -rf kafka_$kafka_ver-$kafka_rel kafka && \
	rm -rf kafka_$kafka_ver-$kafka_rel
ADD create_topic.sh /root
ADD start.sh /root
RUN chmod 777 /root/start.sh && \
	chmod 777 /root/create_topic.sh
VOLUME ["/root"]
EXPOSE 9092
EXPOSE 9094
# Please create the KafkaPushTopic manually.
# For the command,see create_topic.sh
CMD /bin/bash -c /root/start.sh