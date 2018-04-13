FROM wordpress:4.9.5 

LABEL maintainer="Kevin Litzenberg<kevin.litzenberg@gmail.com>"

RUN apt-get update && apt-get install -y certbot python-certbot-apache

#Add directroy for wp-config.php WP_TEMP_DIR for wordpress to workout of for file uploads.
RUN mkdir -p /home/tmp

#Change the ownership of this folder so WP can use it.
RUN chown -R www-data:www-data /home/tmp

ADD wp-config-additions.txt /wp-config-additions.txt

RUN sed -e '1r /wp-config-additions.txt' -i /usr/src/wordpress/wp-config-sample.php 
