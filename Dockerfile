# ----------------------------------
# Dolphin2Point0 Pterodactyl Dockerfile
# Environment: Alpine
# Minimum Panel Version: idk
# ----------------------------------
FROM quay.io/pterodactyl/core:glibc

MAINTAINER Dolphin2Point0, <finb7729@gmail.com>

RUN apk add --no-cache --update ca-certificates fontconfig freetype harfbuzz curl openssl zlib jpeg
