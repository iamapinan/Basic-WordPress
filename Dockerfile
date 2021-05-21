FROM wordpress:latest

WORKDIR /var/www/html

COPY php/php.ini /usr/local/etc/php/conf.d