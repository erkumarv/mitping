FROM ubuntu:12.04
MAINTAINER formitping
RUN apt-get update
RUN apt-get install -y apache2
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
COPY index.html /var/www/
COPY mit.png /var/www/
#RUN echo 'Hello, MIT PING, how are you' > /var/www/index.html
ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]
