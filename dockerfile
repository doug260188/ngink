FROM ubuntu:latest

LABEL maintaner Rodrigo Silva Rodrigues  <rsrodrigues.88@hotmail.com>

RUN apt update
RUN apt upgrade -y

RUN apt install wget -y
RUN apt install unzip -y
RUN apt install nginx -y


RUN wget https://github.com/doug260188/novo/blob/main/site.zip
RUN chhmod 777 site.zip
RUN unzip site.zip -d /var/www/html
WORKDIR /var/www/html