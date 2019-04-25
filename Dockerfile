FROM alpine:latest

MAINTAINER Andrew Cutler <andrew@panubo.com>

RUN apk add --update bash findutils gzip postgresql-client && \
    rm -rf /var/cache/apk/*

COPY commands /commands

RUN echo "SET statement_timeout = 0; commit;" > /root/.psqlrc

ENTRYPOINT ["/commands/entry.sh"]

CMD ["default"]
