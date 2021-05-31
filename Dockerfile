# ----------------------------------
# Dolphin2Point0 Pterodactyl Dockerfile
# Environment: Alpine
# Minimum Panel Version: idk
# ----------------------------------
FROM frolvlad/alpine-glibc

MAINTAINER Dolphin2Point0, <finb7729@gmail.com>

RUN apk add --update --no-cache curl ca-certificates openssl libstdc++ busybox-extras binutils \
        && apk add libc++ jq --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
        && adduser -D -h /home/container container \
        && apk add --no-cache --update ca-certificates fontconfig freetype harfbuzz curl openssl zlib jpeg \
        && adduser --disabled-password --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/ash", "/entrypoint.sh"]
