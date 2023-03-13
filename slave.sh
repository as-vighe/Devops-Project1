#!/bin/bash
sudo apt-get update
sudo apt-get install docker.io -y
sudo apt-get install openjdk-11-jdk -y

sudo apt-get update && apt-get install git -y
cd /home/ubuntu
git clone https://github.com/as-vighe/Devops-Project1.git

sudo docker rm -f webapp || true
cd /home/ubuntu/docker-ansible && sudo docker build . -t test
sudo docker run -it -d --name webapp -p 1998:80 test
