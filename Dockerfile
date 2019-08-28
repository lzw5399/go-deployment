FROM golang:latest

WORKDIR /go/src/gigem

COPY . /go/src/gigem

RUN echo $PATH

RUN which go

RUN export GO111MODULE=on

RUN export GOPROXY=https://goproxy.io

RUN go install

RUN go build go-deployment.go

EXPOSE 80

CMD ["gigem"]