#!/bin/bash

###########################################
#       get the Keys for PHP install      #
###########################################
sudo apt-get update
sudo apt-get install -y lsb-release ca-certificates apt-transport-https curl
sudo curl -sSLo /tmp/debsuryorg-archive-keyring.deb https://packages.sury.org/debsuryorg-archive-keyring.deb
sudo dpkg -i /tmp/debsuryorg-archive-keyring.deb
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/debsuryorg-archive-keyring.gpg] https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
sudo apt-get update


###########################################
#       Install Pelican Requirements      #
###########################################
sudo apt-get install -y 
sudo apt-get install -y php8.4 php8.4-{gd,mysql,mbstring,bcmath,xml,curl,zip,intl,sqlite3,fpm} install appache2 curl tar unzip


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