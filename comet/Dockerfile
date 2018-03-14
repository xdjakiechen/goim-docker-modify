FROM golang:alpine
RUN apk update && \
	apk add git bash && \
	cd /go/src && \
	git clone https://github.com/Terry-mao/goim.git && \
	mkdir golang.org && \
	cd golang.org && \
	mkdir x && \
	cd x && \
	git clone https://github.com/golang/net.git && \
	go get -u github.com/Terry-Mao/goconf && \
	go get -u github.com/thinkboy/log4go && \
	go get -u github.com/gorilla/websocket && \
	cd /root/go/src/goim/comet && \
	go build && \
	\cp -rf comet /root && \
	\cp -rf comet-example.conf /root/comet.conf && \
	\cp -rf comet-log.xml /root/comet-log.xml && \
	rm -rf /root/go && \
	apk del git
VOLUME ["/root"]
EXPOSE 6971
EXPOSE 6972
EXPOSE 8080
EXPOSE 8090
EXPOSE 8092
EXPOSE 7371
CMD /bin/bash -c "cd /root;nohup ./comet -c comet.conf 2>&1 >> /root/comet.log & ;while true;do sleep 60;done;"