FROM golang:1.14 AS builder
ENV GO111MODULE=on CGO_ENABLED=0
RUN go get github.com/benjamin99/goose/cmd/goose@v2.3.1

FROM scratch
COPY --from=builder /go/bin/goose /usr/local/bin/goose
