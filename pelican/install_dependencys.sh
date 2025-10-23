#!/bin/bash

###########################################
#       get the Keys for PHP install      #
###########################################
sudo apt update
sudo apt install -y software-properties-common
sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php -y
sudo apt update


###########################################
#       Install Pelican Requirements      #
###########################################
sudo apt-get install -y 
sudo apt-get install -y php8.4 php8.4-{gd,mysql,mbstring,bcmath,xml,curl,zip,intl,sqlite3,fpm} apache2 curl tar unzip


###########################################
#             Install Composer            #
###########################################
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
sudo COMPOSER_ALLOW_SUPERUSER=1 composer install --no-dev --optimize-autoloader


###########################################
#          Download Pelican Files         #
###########################################
sudo mkdir -p /var/www/pelican
cd /var/www/pelican
curl -L https://github.com/pelican-dev/panel/releases/latest/download/panel.tar.gz | sudo tar -xzv