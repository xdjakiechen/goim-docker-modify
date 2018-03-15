FROM golang:alpine
RUN apk update && \
    apk add git bash && \
    cd /go/src && \
    git clone https://github.com/Terry-mao/goim.git && \
    go get -u github.com/thinkboy/log4go && \
    go get -u github.com/Terry-Mao/goconf && \
    go get -u github.com/gorilla/websocket && \
    go get -u github.com/Shopify/sarama && \
    go get -u github.com/wvanbergen/kazoo-go && \
    cd github.com/wvanbergen && \
    git clone https://github.com/wvanbergen/kafka.git && \
    cd /go/src/goim/comet && \
    go build && \
    \cp -rf comet /root && \
    \cp -rf comet-example.conf /root/comet.conf && \
    \cp -rf comet-log.xml /root/comet-log.xml && \
    rm -rf /go/src && \
    mkdir /go/src && \
    apk del git
ADD start.sh /root
RUN chmod 777 /root/start.sh
VOLUME ["/root"]
EXPOSE 6971
EXPOSE 6972
EXPOSE 8080
EXPOSE 8090
EXPOSE 8092
EXPOSE 7371
CMD /bin/bash -c /root/start.sh