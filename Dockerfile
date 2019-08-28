FROM golang:latest

WORKDIR /go/src/gigem

COPY . /go/src/gigem

RUN echo $PATH

RUN which go

RUN go build

RUN go install

EXPOSE 80

CMD ["gigem"]