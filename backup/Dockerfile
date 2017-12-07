FROM alpine:latest

RUN mkdir -p /app /config /data
RUN apk --no-cache add \
    python2 \
    python3 \
    py2-pip \
    git \
  && pip install \
    evernote \
    html2text \
    beautifulsoup4 \
  && pip3 install \
    vdirsyncer
RUN git clone --depth 1 -b docker https://github.com/tkjacobsen/enote /app/enote \
  && rm -rf /app/enote/.git

RUN adduser -D -u 1000 backup

COPY backup.sh /app/backup.sh
RUN chmod +x /app/backup.sh

CMD ["/app/backup.sh"]
