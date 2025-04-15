#!/bin/bash

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

#######

cd /var/www/wordpress

chmod -R 755 /var/www/wordpress

chown -R www-data:www-data /var/www/wordpress

#######



