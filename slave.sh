#!/bin/bash
sudo apt-get update
sudo apt-get install docker.io -y
sudo apt-get install openjdk-11-jdk -y

sudo apt-get update && apt-get install git -y

cd /home/ubuntu
rm -rf Devops-Project1
#git clone https://github.com/as-vighe/Devops-Project1.git
mkdir -p /home/ubuntu/Devops-Project1

sudo docker rm -f webapp || true
cd /home/ubuntu/Devops-Project1 && sudo docker build -t test .
sudo docker run -it -d --name webapp -p 80:80 test
