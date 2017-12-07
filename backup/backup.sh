#!/bin/sh

/usr/bin/python2.7 /app/enote/enote/enote.py --path /data/Evernote --config /config/enote download

yes | /usr/bin/vdirsyncer --config /config/vdirsyncer/config --verbosity ERROR discover
/usr/bin/vdirsyncer --config /config/vdirsyncer/config sync
