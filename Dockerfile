# ----------------------------------
# Dolphin2Point0 Pterodactyl Dockerfile
# Environment: Alpine
# Minimum Panel Version: idk
# ----------------------------------
FROM alpine:latest

MAINTAINER Dolphin2Point0, <finb7729@gmail.com>

RUN apk add --no-cache --update freetype harfbuzz curl openssl zlib jpeg \
    && adduser --disabled-password --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
