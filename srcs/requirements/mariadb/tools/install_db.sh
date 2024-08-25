#!/bin/sh

# mysql_upgrade

envsubst < ./init.sql > /etc/mysql/init.sql

mysql_install_db

mysqld