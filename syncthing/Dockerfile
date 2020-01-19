FROM alpine:3.11

ENV VERSION=1.3.3

RUN apk --no-cache add curl

RUN adduser -D -u 1027 syncthing
RUN mkdir -p /config /data && chown -R syncthing:users /config /data

RUN curl -o /tmp/syncthing-linux-amd64-v${VERSION}.tar.gz -L https://github.com/syncthing/syncthing/releases/download/v${VERSION}/syncthing-linux-amd64-v${VERSION}.tar.gz

RUN tar xzf /tmp/syncthing-linux-amd64-v${VERSION}.tar.gz -C /home/syncthing \
    && mkdir -p /home/syncthing/bin \
    && ln -s /home/syncthing/syncthing-linux-amd64-v${VERSION}/syncthing /home/syncthing/bin

EXPOSE 8384 22000 21027/udp

CMD ["/home/syncthing/bin/syncthing", "-home=/config", "-no-browser", "-no-restart"]
