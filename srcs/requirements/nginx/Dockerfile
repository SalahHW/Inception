FROM debian:bullseye

RUN apt update && apt install -y \
    openssl \
    nginx

RUN mkdir -p /etc/nginx/ssl/ &&\
    openssl req -x509 -nodes \
	-out /etc/nginx/ssl/inception.crt \
	-keyout /etc/nginx/ssl/inception.key \
	-subj "/C=FR/ST=ALSACE/L=Mulhouse/O=42/OU=student/CN=sbouheni/UID=sbouheni@student.42mulhouse.fr"

COPY ./config/default /etc/nginx/sites-available/.

CMD [ "nginx", "-g", "daemon off;" ]