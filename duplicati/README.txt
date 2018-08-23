Build:
docker build --rm -t XXX/duplicati .

Run:
docker run --user backup --rm --volume XYZ:/config --volume XYZ:/data XXX/duplicati
