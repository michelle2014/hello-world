#!/bin/bash
# sudo yum install -y yum-utils
# sudo yum-config-manager \
#     --add-repo \
#     https://download.docker.com/linux/centos/docker-ce.repo
# sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
# sudo systemctl start docker
sudo yum docker -y
sudo curl -L "https://github.com/docker/compose/releases/download/v2.17.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo chmod 666 /var/run/docker.sock
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo service docker start
# https://github.com/docker/compose/releases/download/v2.17.1/docker-compose-linux-aarch64
