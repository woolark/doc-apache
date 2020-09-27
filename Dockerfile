FROM ubuntu:14.04
MAINTAINER "wlsong <woolark.song@gmail.com>"
LABEL "purpose"="pracices"
RUN apt-get update && apt-get install -y apache2
ADD ./test.html /var/www/html/
WORKDIR /var/www/html
RUN echo hello >> test.html
EXPOSE 80
CMD apachectl -D FOREGROUND
