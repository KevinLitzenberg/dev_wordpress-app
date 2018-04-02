FROM wordpress:latest

LABEL maintainer="Kevin Litzenberg<kevin.litzenberg@gmail.com>"

RUN apt-get update && apt-get install -y certbot python-certbot-apache

ADD wp-config-additions.txt /wp-config-additions.txt

RUN sed -e '1r /wp-config-additions.txt' -i /usr/src/wordpress/wp-config-sample.php 
