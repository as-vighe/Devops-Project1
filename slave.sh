#!/bin/bash
sudo apt-get update
sudo apt-get install docker.io -y
sudo apt-get install openjdk-11-jdk -y

sudo docker rm -f webapp || true
cd /var/lib/jenkins/workspace/docker-ansible && sudo docker build . -t test
sudo docker build /var/lib/jenkins/workspace/docker-ansible -t test .
sudo docker run -it -d --name webapp -p 1998:80 test
