#
# Dockerfile for opencart
#

FROM php:5.6-apache
MAINTAINER kev<noreply@datageek.info>

RUN a2enmod rewrite

RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip\
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
    && docker-php-ext-install gd mcrypt mbstring mysqli zip

WORKDIR /var/www/html

ENV OPENCART_VER 2.0.3.1
ENV OPENCART_URL https://codeload.github.com/cuongnb14/opencart/zip/master
ENV OPENCART_FILE opencart.zip
ENV OC_HOST 25.22.28.94:80

RUN curl ${OPENCART_URL} -o ${OPENCART_FILE} \
    && unzip ${OPENCART_FILE} \
    && cp -R opencart-master/* . \
    && rm -R opencart-master/ \
    && rm ${OPENCART_FILE} \
    && chown -R www-data:www-data .
