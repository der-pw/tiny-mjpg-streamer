FROM alpine

RUN set -xe \
    && echo "@edge https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk add --no-cache mjpg-streamer@edge

ENTRYPOINT  ["mjpg_streamer"]