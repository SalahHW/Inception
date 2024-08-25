FROM debian:latest

RUN apt update && apt install -y \
    gettext \
    mariadb-server

COPY ./config/50-server.cnf /etc/mysql/mariadb.conf.d/.
COPY ./config/init.sql .
COPY ./tools/install_db.sh .

RUN mkdir /run/mysqld &&\
    chmod +x ./install_db.sh

CMD [ "./install_db.sh" ]