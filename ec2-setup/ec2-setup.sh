#!/bin/bash  
 
# 
# script to setup new ec2 machine running Ubuntu
# 
# install git, docker
# 
 
# assuming ec2 user ubuntu,  
SUSER=ubuntu 
 
[ -z "$USER" ] && USER=`whoami` 
 
# if user is not ubuntu (and not root) then change user name to current user 
if [ $USER != $SUSER -a $USER != "root" ]; then 
    echo "adjusting username to $USER" 
    SUSER=$USER 
fi 
 
SHOME=/home/$SUSER 
 
# Install pre-reqs  
sudo apt-get update -y  
sudo apt-get install -y git 
  
# install docker 
dpkg -s docker-ce &> /dev/null 
 
if [ $? -eq 0 ]; then 
    echo "Docker already installed!" 
else 
    curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh 
    sudo usermod -aG docker $SUSER  ; newgrp docker
fi 
 
# enable password login
sudo sed -i '/PasswordAuthentication no/c\PasswordAuthentication yes' /etc/ssh/sshd_config
 
sudo service ssh restart 
 
# change the pw 
PW=HelloGraviton
echo "ubuntu:$PW" | sudo chpasswd 
 
# don't reset password when an AMI is made
sudo sed -i '/lock_passwd: True/c\     lock_passwd: False' /etc/cloud/cloud.cfg 


