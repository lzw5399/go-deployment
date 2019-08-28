FROM golang:latest

WORKDIR ./

RUN go build go-deployment.go

EXPOSE 80

ENTRYPOINT  ["go run", "go-deployment.go"]