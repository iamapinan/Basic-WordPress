FROM wordpress:5.8.3
WORKDIR /var/www/html

COPY php/php.ini /usr/local/etc/php/conf.d
