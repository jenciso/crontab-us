FROM alpine

RUN apk update \
    && apk add --no-cache curl jq tzdata\
    && rm -rf /var/cache/apk/*

COPY        entrypoint.sh /
RUN         chmod +x /entrypoint.sh
ENTRYPOINT  ["/entrypoint.sh"]

# run: docker run -it --rm IMAGE "* * * * * echo hello"