Build:
docker build --rm -t XXX/backup .

Run:
docker run --user backup --rm --volume XYZ:/config --volume XYZ:/data XYZ
