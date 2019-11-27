FROM breauxaj/alpine:latest

RUN apk add haproxy \
  && rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]

EXPOSE 80