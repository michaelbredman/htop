FROM alpine:latest
RUN apk --no-cache add --update htop && rm -rf /var/cache/apk/*
RUN apk --no-cache add --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing shellinabox
ENTRYPOINT ["shellinaboxd", "-t", "-p8888", "-s/:nobody:nogroup:/:htop"]
