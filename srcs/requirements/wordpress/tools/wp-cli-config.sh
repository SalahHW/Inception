#!/bin/sh

mkdir /run/php/
cd /var/www/html

wget https://raw.github.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x ./wp-cli.phar

./wp-cli.phar core download --locale=fr_FR --allow-root

./wp-cli.phar config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=mariadb --allow-root

./wp-cli.phar core install --url=$WP_URL --title=inception --admin_user=$WP_USER --admin_password=$WP_PASS --admin_email=$WP_MAIL --allow-root

php-fpm7.4 -F