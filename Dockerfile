FROM wordpress:5.7.2

WORKDIR /var/www/html

COPY php/php.ini /usr/local/etc/php/conf.d