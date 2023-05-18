FROM ubuntu:latest

LABEL maintaner Rodrigo Silva Rodrigues  <rsrodrigues.88@hotmail.com>

RUN apt update && upgrade -y

RUN apt install -y wget
RUN apt install -y unzip
RUN apt install nginx -y


RUN wget https://github.com/doug260188/novo/blob/main/test.zip -O site.zip
RUN unzip site.zip -d /var/www/html/