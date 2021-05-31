# ----------------------------------
# Dolphin2Point0 Pterodactyl Dockerfile
# Environment: Alpine
# Minimum Panel Version: idk
# ----------------------------------
FROM        frolvlad/alpine-glibc

LABEL       author="Pterodactyl Software" maintainer="support@pterodactyl.io"

RUN         apk add --update --no-cache curl ca-certificates openssl libstdc++ busybox-extras binutils jq \
            && apk add --no-cache ca-certificates fontconfig freetype harfbuzz curl openssl zlib jpeg \
            && adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/ash", "/entrypoint.sh"]
