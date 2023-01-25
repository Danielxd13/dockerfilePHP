#instalacion del respositorio ubuntu
FROM ubuntu:latest
#no situamos en la raiz
WORKDIR /
#hacemos un update y intalaciones
RUN apt-get update 
RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata
RUN apt-get install -y apache2 php libapache2-mod-php git apache2-utils
# creacion de una carpeta
RUN mkdir simple-php-website
#entrar a una carpeta
WORKDIR /simple-php-website
#descargar repository git
RUN git clone https://github.com/banago/simple-php-website.git
#copiar en la carpeta q da servicion 
RUN cp -r /simple-php-website/simple-php-website/ /var/www/html/
#indicador que se utilizara el puerto 80
EXPOSE 80
#iniciar apache
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
