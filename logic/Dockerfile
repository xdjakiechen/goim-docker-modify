FROM golang:alpine
RUN apk update && \
    apk add git bash && \
    cd /go/src && \
    git clone -b master https://github.com/shinrariel/goim.git && \
    go get -u github.com/thinkboy/log4go && \
    go get -u github.com/Terry-Mao/goconf && \
    go get -u github.com/gorilla/websocket && \
    go get -u github.com/Shopify/sarama && \
    go get -u github.com/wvanbergen/kazoo-go && \
    cd github.com/wvanbergen && \
    git clone https://github.com/wvanbergen/kafka.git && \
    cd /go/src/goim/logic && \
    go build && \
    \cp -rf logic /root && \
    \cp -rf logic-example.conf /root/logic.conf && \
    \cp -rf logic-log.xml /root/logic-log.xml && \
    rm -rf /go/src && \
    mkdir /go/src && \
    apk del git
ADD start.sh /root
RUN chmod 777 /root/start.sh
VOLUME ["/root"]
EXPOSE 7170
EXPOSE 7171
EXPOSE 7172
EXPOSE 7372
CMD /bin/bash -c /root/start.sh