# built filtron from dalf/filtron
FROM golang:1.17-alpine
WORKDIR $GOPATH/src/github.com/searxng/filtron
ENV UPSTREAM_COMMIT=36abf9303a55c60e5fc86a91bf73f96ce16475d5

RUN apk add --no-cache git
RUN git clone https://github.com/searxng/filtron.git .
RUN git reset --hard ${UPSTREAM_COMMIT}
RUN go get -d -v
RUN gofmt -l ./
RUN CGO_ENABLED=0 go build -ldflags '-extldflags "-static"' -tags timetzdata .
