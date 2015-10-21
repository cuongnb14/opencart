#
# Dockerfile for opencart
#

FROM php:5.6-apache
MAINTAINER bacuong<cuongnb14@gmail.com>

RUN a2enmod rewrite

RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev unzip git\
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
    && docker-php-ext-install gd mcrypt mbstring mysqli zip

WORKDIR /var/www/html

ENV REPO_URL https://github.com/cuongnb14/opencart.git
ENV OC_HOSTNAME localhost
ENV OC_PORT 10000
ENV DB_HOSTNAME mysql
ENV DB_PORT 3306
ENV DB_USERNAME root
ENV DB_PASSWORD root
ENV DB_DATABASE opencart

RUN git clone ${REPO_URL} application_ok3s\
    && cp -R application_ok3s/* . \
    && rm -R application_ok3s/ \
    && chown -R www-data:www-data .
