FROM golang:latest

# WORKDIR ./

# ADD . $GOPATH/src/github.com/mygohttp

RUN go build go-deployment.go

EXPOSE 8086

ENTRYPOINT  ["go run", "go-deployment.go"]