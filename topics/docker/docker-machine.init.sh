set -e

curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-machine-`uname -s`-`uname -m` > docker-machine
chmod +x docker-machine
mv docker-machine /usr/local/bin/docker-machine
