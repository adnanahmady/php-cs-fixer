FROM php:8-fpm-alpine3.13

RUN rm -rf /var/cache/apk/* && rm -rf /tmp/*
RUN apk update && apk --no-cache add sudo
RUN wget https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v3.0.0/php-cs-fixer.phar -O php-cs-fixer
RUN chmod a+x php-cs-fixer && mv php-cs-fixer /usr/local/bin/php-cs-fixer

ENTRYPOINT ["php-cs-fixer"]
