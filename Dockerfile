FROM golang:1.14
ENV GO111MODULE on
RUN go get github.com/benjamin99/goose/cmd/goose@master
