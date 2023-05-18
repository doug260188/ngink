FROM ubuntu:latest

LABEL maintaner Rodrigo Silva Rodrigues  <rsrodrigues.88@hotmail.com>

#UPDATE 
RUN apt update
RUN apt upgrade -y

#INTALANDO SERVIÇOS
RUN apt install wget -y
RUN apt install p7zip-full -y
RUN apt install unzip -y
RUN apt install nginx -y

#BAIXANDO E DIRECIONANDO ARQUIVO PARA DIRETORIO
RUN wget https://github.com/doug260188/novo/blob/main/site.zip
RUN ls -l ; pwd
RUN unzip /site.zip
