FROM alpine:latest
MAINTAINER Jonathon W. Marshall <jonathon.marshall@gmail.com>

RUN apk --update add bash wget make docker git ca-certificates \
    && rm -f /var/cache/apk/* \
    && cd /bin \
    && wget https://github.com/drone/drone-cli/releases/download/v0.8.0/drone_linux_amd64.tar.gz -O - | tar -xz \
    && chmod +x drone
