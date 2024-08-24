#!/bin/sh

cd /var/www/html

wget https://raw.github.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x ./wp-cli.phar

./wp-cli.phar core download --locale=fr_FR --allow-root

./wp-cli.phar config create --dbname=wordpress --dbuser=wpuser --dbpass=password --dbhost=mariadb --allow-root

./wp-cli.phar core install --url=sbouheni.42.fr --title=inception --admin_user=admin --admin_password=admin --admin_email=admin@admin.com --allow-root

php-fpm8.2 -F