FROM alpine:latest

RUN mkdir -p /app /config /data
RUN apk --no-cache add \
    tarsnap

RUN adduser -D -u 1026 tarsnap

COPY tarsnap.sh /app/
RUN chmod +x /app/tarsnap.sh
RUN chown -R tarsnap /app

CMD ["/app/tarsnap.sh"]
