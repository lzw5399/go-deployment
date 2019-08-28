FROM golang:latest

MAINTAINER Razil "zhiwen@kooboo.cn"

WORKDIR ./

# ADD . $GOPATH/src/github.com/mygohttp

RUN go build .

EXPOSE 8086

ENTRYPOINT  ["go run", "go-deployment.go"]