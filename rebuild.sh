#!/bin/sh

LATEST="3.11"
DIRS="backup mailsync syncthing"

sudo docker pull alpine:$LATEST

for DIR in $DIRS
do
    echo $DIR
    cd $DIR
    sed -i "s/FROM alpine:[0-9]\.[0-9]*/FROM alpine:${LATEST}/" Dockerfile
    sudo docker build --rm -t taj/$DIR .
    cd ..
done

sudo docker stop syncthing
sudo docker rm syncthing
sudo docker run --name=syncthing --restart=always --user=syncthing -d --net=host -v /var/services/homes/taj_admin/config/syncthing:/config -v /volume1/Sync:/data taj/syncthing
