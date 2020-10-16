FROM golang:alpine3.11
WORKDIR /project
COPY invader.go .
RUN apk add --no-cache git
RUN go get github.com/pdevine/go-asciisprite
RUN CGO_ENABLED=0 GOOS=linux go build -a -ldflags '-extldflags "-static"' -o invader invader.go

FROM scratch
COPY --from=0 /project/invader /invader
CMD ["/invader"]
