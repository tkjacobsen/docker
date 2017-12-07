FROM alpine:latest

ENV PYTHONIOENCODING UTF-8
ENV LANG C.UTF-8

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

RUN adduser -D -u 1026 backup

COPY backup.sh /app/backup.sh
RUN chmod +x /app/backup.sh

RUN chown -R backup /app

CMD ["/app/backup.sh"]
