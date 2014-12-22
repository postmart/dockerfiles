FROM ubuntu:trusty
MAINTAINER Postmart "postmart@me.com"
RUN apt-get update && sudo apt-get -y install python python-pip openssh-server 
RUN useradd -m ansible
RUN mkdir -p /home/ansible/.ssh
COPY ansible_ssh.pub /home/ansible/.ssh/authorized_keys

