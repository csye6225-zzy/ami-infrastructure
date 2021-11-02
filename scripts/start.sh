#!/bin/bash

sudo apt-get update
sudo apt-get update
sudo apt-get install openjdk-8-jdk -y
sudo apt-get install mysql-client -y

sudo apt install ruby-full -y

cd /home/ubuntu
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto > /tmp/logfile

cd /usr/local/
mkdir web
cd web
touch log
chmod 666 log