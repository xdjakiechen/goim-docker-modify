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
    cd /go/src/goim/comet/client && \
    go build && \
    mkdir /root/client && \
    \cp -rf client /root/client/ && \
    \cp -rf client-example.conf /root/client/client.conf && \
    \cp -rf log.xml /root/client/log.xml && \
    cd /go/src/goim && \
    \cp -rf examples /root && \
    \cp -rf benchmark /root && \
    cd /root/examples/javascript && \
    go build main.go && \
    rm -rf main.go && \
    cd /root/benchmark/client && \
    go build main.go && \
    rm -rf main.go && \
    cd /root/benchmark/multi_push && \
    go build main.go && \
    rm -rf main.go && \
    cd /root/benchmark/push && \
    go build main.go && \
    rm -rf main.go && \
    cd /root/benchmark/push_room && \
    go build main.go && \
    rm -rf main.go && \
    cd /root/benchmark/push_rooms && \
    go build main.go && \
    rm -rf main.go && \
    cd /root/example && \
    go build main.go && \
    rm -rf main.go && \
    rm -rf /go/src && \
    mkdir /go/src && \
    apk del git
VOLUME ["/root"]
EXPOSE 1999
CMD /bin/bash