FROM golang:1.12 as builder

WORKDIR $GOPATH/src/mypackage/myapp/
COPY ./src .
# Using go get.
RUN go get -d -v
# Build the binary.
RUN go build -o /go/bin/main -ldflags "-s -w"

FROM scratch
COPY --from=builder /go/bin/main /main
ENTRYPOINT ["/main"]
