FROM php:7.2-alpine

MAINTAINER Daniel Wolf <daniel.wolf@8mylez.com>

RUN apk upgrade --update && apk add \
    freetype-dev \
    libjpeg-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd