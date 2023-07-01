FROM ubuntu:18.04
MAINTAINER juangburgos@gmail.com

# Update
RUN apt-get update

# Install necessary tools
RUN apt-get -y install cron \
&& apt-get -y install wget \
&& apt-get -y install unzip \
&& apt-get -y install git

git clone https://github.com/sprintcube/docker-compose-lamp.git
cd docker-compose-lamp/
cp sample.env .env
# modify sample.env as needed
docker-compose up -d
# visit localhost
