FROM anapsix/alpine-java:latest
ENV kafka_ver=2.12
ENV kafka_rel=1.0.1
RUN apk add wget tar && \
	cd /root && \
	wget http://www-us.apache.org/dist/kafka/$kafka_rel/kafka_$kafka_ver-$kafka_rel.tgz && \
    tar -xzf kafka_$kafka_ver-$kafka_rel.tgz && \
    rm -rf kafka_$kafka_ver-$kafka_rel.tgz && \
	apk del wget tar && \
	\cp -rf kafka_$kafka_ver-$kafka_rel kafka && \
	rm -rf kafka_$kafka_ver-$kafka_rel
VOLUME ["/root/kafka"]
EXPOSE 9092
EXPOSE 9094