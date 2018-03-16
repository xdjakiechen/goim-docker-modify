FROM golang:alpine
RUN apk update && \
    apk add git bash && \
    cd /go/src && \
    git clone -b master-cors https://github.com/zhouweitong3/goim.git && \
    go get -u github.com/thinkboy/log4go && \
    go get -u github.com/Terry-Mao/goconf && \
    go get -u github.com/gorilla/websocket && \
    go get -u github.com/Shopify/sarama && \
    go get -u github.com/wvanbergen/kazoo-go && \
    cd github.com/wvanbergen && \
    git clone https://github.com/wvanbergen/kafka.git && \
    cd /go/src/goim/logic/job && \
    go build && \
    \cp -rf job /root && \
    \cp -rf job-example.conf /root/job.conf && \
    \cp -rf job-log.xml /root/job-log.xml && \
    rm -rf /go/src && \
    mkdir /go/src && \
    apk del git
ADD start.sh /root
RUN chmod 777 /root/start.sh
VOLUME ["/root"]
EXPOSE 7373
CMD /bin/bash -c /root/start.sh