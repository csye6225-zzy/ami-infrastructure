#!/bin/bash

sudo apt-get update
sudo apt-get update
sudo apt-get install openjdk-8-jdk -y

sudo apt install ruby-full -y

cd /home/ubuntu
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto > /tmp/logfile

wget https://s3.amazonaws.com/amazoncloudwatch-agent/ubuntu/amd64/latest/amazon-cloudwatch-agent.deb
sudo dpkg -i -E ./amazon-cloudwatch-agent.deb

cd /usr/local/
sudo mkdir web
sudo chmod 777 web
cd web
touch log
chmod 666 log

