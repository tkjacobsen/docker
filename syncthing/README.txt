Build:
docker build --rm -t XXX/syncthing .

Run:
sudo docker run --name=syncthing --restart=always --user=syncthing -d --net=host -v XXX:/config -v XXX:/data/Sync XXX/syncthing
