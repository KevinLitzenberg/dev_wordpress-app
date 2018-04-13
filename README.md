Built on versions:
Apache/2.4.25 (Debian)
PHP_VERSION => 7.2.2 
SQLite3 module version => 7.2.2
SQLite3 Library => 3.20.1
WORDPRESS_VERSION => 4.9.5

Version 0.0.4
Locked WORDPRESS_VERSION => 4.9.5 
https://wordpress.org/support/topic/howto-domain-mapping-without-a-plugin-instructions/
-Removed SUNRISE theme as it is not needed in WP > 4.x.
-Added the following to wp-config.php via additions.txt to be added to image build
 define( 'COOKIE_DOMAIN', $_SERVER[ 'HTTP_HOST' ] );

-Updated /home/tmp directory to now be owned/grouped by www-data 
