FROM alpine:3.20
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk add --no-cache g++ make bash
RUN adduser -D -u 1000 sandbox
USER sandbox
WORKDIR /work
