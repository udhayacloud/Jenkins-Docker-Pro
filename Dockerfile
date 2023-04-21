FROM centos:latest
MAINTAINER surya.udhaya@gmail.com

RUN yum update -y && yum install httpd httpd-tools -y && yum install zip -y && yum install unzip -y

WORKDIR /var/www/html/
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
RUN unzip photogenic.zip && \
    cp -rvf photogenic/* . && \
    rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80