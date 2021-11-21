# built filtron from dalf/filtron
FROM golang:1.17-alpine
WORKDIR $GOPATH/src/github.com/searxng/filtron
ENV UPSTREAM_COMMIT=6e77216bd6f9e827d6783f58826fe7761cab1c73

RUN apk add --no-cache git
RUN git clone https://github.com/searxng/filtron.git .
RUN git reset --hard ${UPSTREAM_COMMIT}
RUN go get -d -v
RUN gofmt -l ./
RUN go build .
