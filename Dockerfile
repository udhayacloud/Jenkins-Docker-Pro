FROM centos:latest
LABEL maintainer="udhaya.sri@gmail.com"


RUN dnf install epel-release -y
RUN dnf install httpd -y
RUN dnf install zip -y
RUN dnf install unzip -y

ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/photogenic.zip
WORKDIR /var/www/html/

RUN unzip -q photogenic.zip -x __MACOSX/\* && \
    rm photogenic.zip

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80