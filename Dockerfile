FROM golang:1.10.3-alpine3.8

RUN apk update && apk upgrade && \
    apk add --no-cache git
