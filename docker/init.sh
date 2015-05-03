set -e
sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo service docker.io restart

