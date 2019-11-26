FROM breauxaj/alpine:latest

RUN apk add haproxy

COPY entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]

EXPOSE 80