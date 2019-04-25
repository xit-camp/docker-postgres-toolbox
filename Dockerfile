FROM alpine:latest

MAINTAINER Andrew Cutler <andrew@panubo.com>

RUN apk add --update bash findutils gzip postgresql-client && \
    rm -rf /var/cache/apk/*

COPY commands /commands

  RUN echo -e "\SET QUIET on\nSET statement_timeout to 0;\ncommit;\n\SET QUIET off\n" > /root/.psqlrc

ENTRYPOINT ["/commands/entry.sh"]

CMD ["default"]
