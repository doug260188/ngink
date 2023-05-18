FROM nginx:latest

LABEL maintaner Rodrigo Silva Rodrigues  <rsrodrigues.88@hotmail.com>

#UPDATE 
RUN apt update
RUN apt upgrade -y

#INTALANDO SERVIÇOS
RUN apt install wget -y
RUN apt install zip unzip -y
RUN apt install nginx -y

#BAIXANDO E DIRECIONANDO ARQUIVO PARA DIRETORIO
RUN wget https://raw.githubusercontent.com/doug260188/novo/main/site.zip 
RUN zipinfo site.zip
RUN unzip site.zip -d ./var/www/html

