FROM breauxaj/alpine:latest

RUN apk update && apk upgrade \
  && apk add haproxy \
  && rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]

EXPOSE 80