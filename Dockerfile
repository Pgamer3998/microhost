FROM php:apache

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

RUN a2enmod rewrite && a2enmod headers && a2enmod ssl

RUN chown -R www-data:www-data /var/www/html
