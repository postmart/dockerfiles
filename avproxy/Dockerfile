FROM ubuntu:14.04
MAINTAINER Postmart "postmart@me.com"
RUN apt-get update &&  apt-get -y install tinyproxy dansguardian clamav
RUN sed -i 's/^UNCONFIGURED/#UNCONFIGURED/g' /etc/dansguardian/dansguardian.conf
RUN echo "contentscanner = '/etc/dansguardian/contentscanners/clamav.conf'" >> /etc/dansguardian/dansguardian.conf
RUN sed -i 's/Port\ 8888/Port\ 3128/g' /etc/tinyproxy.conf
RUN freshclam
EXPOSE 8080
CMD freshclam && service dansguardian start && service tinyproxy start
