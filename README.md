A Docker image for building executable using Go

##### To build with this image

In `Dockerfile`,

```dockerfile
FROM alexhokl/golang as builder

WORKDIR /go/src/${repo}

COPY . .

RUN go get ./...
RUN go build

FROM alpine

COPY --from=builder /go/bin/${exe} .

CMD ["./app"]
```

In command line,

```sh
docker build -t username/app --build-arg repo=github.com/alexhokl/app --build-arg exe=app .
```
