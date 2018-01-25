FROM alpine:latest

RUN mkdir -p /app /config /data /data/Maildir
RUN apk --no-cache add \
    tarsnap \
  && sed -e 's|cachedir /usr/local/tarsnap-cache|cachedir /config/tarsnap-cache|' \ 
    -e 's|keyfile /root/tarsnap.key|keyfile /config/tarsnap.key|' \
	/etc/tarsnap/tarsnap.conf.sample > /etc/tarsnap/tarsnap.conf

COPY tarsnap.sh /app/

CMD ["/app/tarsnap.sh"]
