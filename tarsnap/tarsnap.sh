#!/bin/sh

/usr/bin/tarsnap -c \
	-f "Maildir-$(date +%Y-%m-%d_%H-%M-%S)" \
	/data/Maildir
