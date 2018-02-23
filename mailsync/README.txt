Build:
docker build --rm -t XXX/mailsync .

Run:
docker run --user msync --rm --volume XYZ:/config --volume XYZ:/data XXX/mailsync
