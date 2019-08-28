FROM golang:latest

RUN mkdir /go/src/gigem

COPY . /go/src/gigem

WORKDIR /go/src/gigem

RUN echo $PATH

RUN which go

RUN export GO111MODULE=on

RUN export GOPROXY=https://goproxy.io

RUN go mod download

RUN go install

RUN go build go-deployment.go

EXPOSE 80

CMD ["gigem"]