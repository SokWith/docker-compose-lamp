FROM ubuntu:18.04
MAINTAINER juangburgos@gmail.com

# Update
RUN apt-get update

# Install necessary tools
RUN apt-get -y install cron \
&& apt-get -y install wget \
&& apt-get -y install unzip

RUN apt-get -y install git
RUN apt-get -y install docker-compose

RUN git clone https://github.com/sprintcube/docker-compose-lamp.git

RUN ls -l docker-compose-lamp/
RUN cp docker-compose-lamp/sample.env docker-compose-lamp/.env
# modify sample.env as needed
RUN cd docker-compose-lamp/
RUN pwd
RUN docker-compose up -d
# visit localhost
