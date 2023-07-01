FROM ubuntu:18.04
MAINTAINER juangburgos@gmail.com

# Update
RUN apt-get update

# Install necessary tools
RUN apt-get -y install cron \
&& apt-get -y install wget \
&& apt-get -y install unzip 

