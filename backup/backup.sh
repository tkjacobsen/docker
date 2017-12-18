#!/bin/sh

/usr/bin/python3 /app/enote.py --path /data/Evernote --config /config/enote

yes | /usr/bin/vdirsyncer --config /config/vdirsyncer/config --verbosity ERROR discover
/usr/bin/vdirsyncer --config /config/vdirsyncer/config sync
