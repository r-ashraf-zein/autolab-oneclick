echo "Uninstalling Autolab Project..."

echo "Wait..."

sudo rm -rf ./server/Autolab ./server/Tango ./server/db-data
sudo rm -rf ./local/Autolab ./local/Autolab ./local/Tango ./local/db-data

docker rm -f $(docker ps -a -q)

sudo umount /var/lib/docker/overlay2
sudo umount /var/lib/docker/plugins

sudo rm -rf /var/lib/docker

sudo apt-get purge docker-ce;
sudo apt-get autoremove --purge docker-ce;
sudo apt-get autoclean;

echo "Now you can delete the whole directory of Autolab-project"
