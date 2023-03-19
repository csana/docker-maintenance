FROM nginx:stable-alpine

LABEL org.opencontainers.image.authors="Norbert Csanadi <csanadi.norbert@okfo.gov.hu>"
LABEL hu.dpckorhaz.dev.docker.run="docker run -p 8080:80 -ti maintenance"

RUN apk update \
 && apk add tzdata \
 && rm -f /etc/localtime \
 && ln -s /usr/share/zoneinfo/Europe/Budapest /etc/localtime \
 && echo "Europe/Budapest" > /etc/timezone \
 && rm -rf /var/cache/apk/*

COPY ./default.conf /etc/nginx/conf.d/

COPY ./src/ /usr/share/nginx/html/


