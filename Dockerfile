#
# Dockerfile for opencart
#

FROM php:5.6-apache
MAINTAINER kev<noreply@datageek.info>

RUN a2enmod rewrite

RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev unzip\
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
    && docker-php-ext-install gd mcrypt mbstring mysqli zip

WORKDIR /var/www/html

ENV REPO_URL https://codeload.github.com/cuongnb14/opencart/zip/master
ENV REPO_NAME opencart
ENV OC_HOST 25.22.28.94:80

RUN curl ${REPO_URL} -o ${REPO_NAME}.zip \
    && unzip ${REPO_NAME} \
    && cp -R ${REPO_NAME}-master/* . \
    && rm -R ${REPO_NAME}-master/ \
    && rm ${REPO_NAME} \
    && chown -R www-data:www-data .
