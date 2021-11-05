FROM golang:latest

WORKDIR /app

ADD templates /app/templates

ADD . /go/src/github.com/kevinlethe/tvtv-to-xmltv
RUN go install github.com/kevinlethe/tvtv-to-xmltv@latest

ENTRYPOINT /go/bin/TvtvToXmlTV

EXPOSE 8080
