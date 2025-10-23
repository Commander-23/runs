#!/bin/bash

###########################################
#       Install Pelican Requirements      #
###########################################
sudo apt-get update
sudo apt-get install -y lsb-release ca-certificates apt-transport-https curl
sudo curl -sSLo /tmp/debsuryorg-archive-keyring.deb https://packages.sury.org/debsuryorg-archive-keyring.deb
sudo dpkg -i /tmp/debsuryorg-archive-keyring.deb
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/debsuryorg-archive-keyring.gpg] https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
sudo apt-get update
sudo apt-get install -y php8.4
sudo apt-get install -y php8.4-{gd,mysql,mbstring,bcmath,xml,curl,zip,intl,sqlite3,fpm}

sudo apt-get -y install appache2 curl tar unzip
