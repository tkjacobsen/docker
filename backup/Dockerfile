FROM alpine:3.10

#ENV PYTHONIOENCODING UTF-8
#ENV LANG C.UTF-8

RUN mkdir -p /app /config /data
RUN apk --no-cache add \
    python3 \
    git \
  && pip3 install \
    vdirsyncer \
    evernote3 \
    html2text \
    beautifulsoup4

RUN adduser -D -u 1026 backup

COPY backup.sh enml.py enote.py /app/
RUN chmod +x /app/backup.sh
RUN chown -R backup /app

CMD ["/app/backup.sh"]
