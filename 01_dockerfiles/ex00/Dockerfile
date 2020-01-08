FROM alpine:latest

MAINTAINER Michael CLAUDE <miclaude@student.42.fr>

RUN apk update && \
    apk add vim && \
    rm -rf /var/cache/apk/*

CMD ["/usr/bin/vim"]
