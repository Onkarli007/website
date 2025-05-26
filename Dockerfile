FROM ubuntu

ADD . /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]

