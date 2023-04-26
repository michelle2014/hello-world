#!/bin/bash
# install docker
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce-20.10.23 docker-ce-cli-20.10.23 containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl start docker

# install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/v2.17.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo service docker start

# post install config
# Add your user to the docker group
sudo usermod -aG docker $USER
sudo chmod 666 /var/run/docker.sock
# create a soft link for path /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo service docker start
# https://github.com/docker/compose/releases/download/v2.17.1/docker-compose-linux-aarch64
