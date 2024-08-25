FROM debian:bullseye

RUN apt update && apt install -y \
    wget \
    php-fpm \
    php-mysqli

COPY ./config/www.conf /etc/php/7.4/fpm/pool.d/.
COPY ./tools/wp-cli-config.sh .

RUN chmod +x /wp-cli-config.sh

CMD [ "./wp-cli-config.sh" ]