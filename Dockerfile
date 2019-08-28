FROM golang:latest

RUN mkdir /app

COPY ./ /app

WORKDIR /app

RUN go build go-deployment.go

EXPOSE 8086

ENTRYPOINT  ["go run", "go-deployment.go"]