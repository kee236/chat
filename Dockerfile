FROM php:7.4-apache

# Install necessary extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy CodeIgniter files
COPY . /var/www/html/

# Expose port 8080
EXPOSE 8080

# Start Apache
CMD ["apache2-foreground"]
