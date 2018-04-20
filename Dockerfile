# docker build -t webapp-go .
FROM golang:1.10.1
RUN go get -u -v github.com/derekparker/delve/cmd/dlv

RUN mkdir -p /go/src/github.com/lukehoban/webapp-go
WORKDIR /go/src/github.com/lukehoban/webapp-go
COPY . /go/src/github.com/lukehoban/webapp-go

CMD ["dlv", "debug", "--headless", "--listen=:2345", "--accept-multiclient"]