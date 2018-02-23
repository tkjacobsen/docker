FROM alpine:latest

RUN mkdir -p /app /config /data
RUN apk --no-cache add isync

RUN adduser -D -u 1026 sync

COPY mailsync.sh /app/
RUN chmod +x /app/mailsync.sh
RUN chown -R sync /app

CMD ["/app/mailsync.sh"]
