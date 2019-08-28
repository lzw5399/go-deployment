FROM golang:latest

RUN mkdir /app

COPY ./ /app

WORKDIR /app

RUN go build go-deployment.go

EXPOSE 80

ENTRYPOINT  ["go run", "go-deployment.go"]