# built filtron from dalf/filtron
FROM golang:1.17-alpine
WORKDIR $GOPATH/src/github.com/asciimoo/filtron
ENV UPSTREAM_COMMIT=d8150687f4f220593de723a5b8c016a1a2a841b5

RUN apk add --no-cache git
RUN git clone https://github.com/dalf/filtron.git .
RUN git reset --hard ${UPSTREAM_COMMIT}
RUN go get -d -v
RUN gofmt -l ./
RUN go build .
