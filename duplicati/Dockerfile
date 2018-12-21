FROM alpine:3.8

RUN mkdir -p /app /config /data
RUN apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing add \
  mono \
  curl

RUN \
  echo "**** install duplicati ****" && \
  mkdir -p /app/duplicati && \
  curl -o /tmp/duplicati.zip https://github.com/duplicati/duplicati/releases/download/v2.0.4.8-2.0.4.8_canary_2018-12-13/duplicati-2.0.4.8_canary_2018-12-13.zip && \
  unzip -q /tmp/duplicati.zip -d /app/duplicati && \
  echo "**** cleanup ****" && \
  rm -rf /tmp/*

RUN adduser -D -u 1026 duplicati

EXPOSE 8200
CMD ["mono", "Duplicati.Server.exe", "--webservice-interface=any", "--server-datafolder=/config"]
