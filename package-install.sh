#!/bin/bash

#sudo amazon-linux-extras install ansible2
#sudo yum install docker -y && sudo systemctl enable --now docker
# if getting issue of sudo then remove it from the line or install apt-get install sudo

sudo docker image build -t ansible:v1 .

sudo docker run -itd --name ansible-task -v /var/run/docker.sock:/var/run/docker.sock ansible:v1

