FROM alpine:latest

LABEL author="hoang.huy.tran@gmail.com"

RUN  apk update && apk add -q -f tini && rm -rf /var/cache/apk/*

ENTRYPOINT [ "/sbin/tini", "--"]
