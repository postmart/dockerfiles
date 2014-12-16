FROM ubuntu:trusty
MAINTAINER Postmart "postmart@me.com"
RUN apt-get update && sudo apt-get -y install python python-pip fuse git 
RUN git clone https://github.com/danilop/yas3fs.git
RUN sed -i'' 's/^# *user_allow_other/user_allow_other/' /etc/fuse.conf
RUN cd yas3fs && python setup.py install
RUN sed -i'' 's/^# *user_allow_other/user_allow_other/' /etc/fuse.conf
