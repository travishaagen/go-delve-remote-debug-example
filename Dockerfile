# docker build -t webapp-go .
FROM golang:1.10.1
RUN go get -u -v github.com/derekparker/delve/cmd/dlv
#EXPOSE 2345

RUN mkdir -p /go/src/github.com/lukehoban/webapp-go
WORKDIR /go/src/github.com/lukehoban/webapp-go
COPY . /go/src/github.com/lukehoban/webapp-go
#RUN go-wrapper download
#RUN go-wrapper install

#EXPOSE 8080
CMD ["dlv", "debug", "--headless", "--listen=:2345"]