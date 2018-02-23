FROM alpine:latest

RUN mkdir -p /app /config /data
RUN apk --no-cache add \
    isync \
	ca-certificates

RUN adduser -D -u 1026 msync

COPY mailsync.sh /app/
RUN chmod +x /app/mailsync.sh
RUN chown -R msync /app

CMD ["/app/mailsync.sh"]
