ROM centos:latest
MAINTAINER udhaya.sri@gmail.com

RUN yum -y install httpd zip unzip && \
    rm -rf /var/cache/yum/*

ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/

RUN unzip photogenic.zip && \
    cp -rvf photogenic/* . && \
    rm -rf photogenic photogenic.zip

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]