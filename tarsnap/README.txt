Build:
docker build --rm -t XXX/tarsnap .

Run:
docker run --user tarsnap --rm --volume XYZ:/config --volume XYZ:/data XYZ
