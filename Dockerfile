FROM ubuntu

RUN apt update && \
    apt install -y apache2 && \
    apt clean && rm -rf /var/lib/apt/lists/*

COPY . /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]

