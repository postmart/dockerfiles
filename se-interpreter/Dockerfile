FROM evarga/jenkins-slave
MAINTAINER Postmart "postmart@me.com"
RUN apt-get update &&  apt-get -y install npm git
RUN npm install -g se-interpreter
RUN ln -s /usr/bin/nodejs /usr/bin/node
