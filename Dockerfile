FROM php:7.2-apache

ARG PROJECT_NAME
ENV PROJECT_NAME ${PROJECT_NAME}
ENV APACHE_DOCUMENT_ROOT /var/www/html/${PROJECT_NAME}/public

RUN apt-get update && apt-get install -y                \
        libzip-dev                                      \
        unzip                                           \
        git                                          && \
    docker-php-ext-configure zip --with-libzip       && \
    docker-php-ext-install                              \
        zip                                          && \
        a2enmod rewrite

RUN curl -s https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer


