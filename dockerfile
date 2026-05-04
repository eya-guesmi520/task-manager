# Image de base PHP avec Apache
FROM php:8.2-apache

# Installer extensions nécessaires
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copier le code source dans le conteneur
COPY . /var/www/html/

# Donner les bons droits
RUN chown -R www-data:www-data /var/www/html

# Exposer le port Apache
EXPOSE 80

# Activer mod_rewrite pour Apache (utile pour PHP apps)
RUN a2enmod rewrite
