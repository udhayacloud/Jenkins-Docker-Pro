FROM centos:latest
MAINTAINER surya.udhaya@gmail.com

RUN yum install -y httpd zip unzip

WORKDIR /var/www/html/
ADD local/path/to/photogenic.zip .
RUN unzip photogenic.zip && \
    cp -rvf photogenic/* . && \
    rm -rf photogenic photogenic.zip

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80