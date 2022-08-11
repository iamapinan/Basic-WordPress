FROM wordpress:5.9-php8.0-apache
WORKDIR /var/www/html

COPY php/php.ini /usr/local/etc/php/conf.d
