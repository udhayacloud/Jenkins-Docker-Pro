FROM centos:latest
LABEL maintainer="udhaya.sri@gmail.com"

RUN yum -y install httpd httpd-tools
RUN yum -y install zip unzip


ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/photogenic.zip
WORKDIR /var/www/html/

RUN unzip -q photogenic.zip -x __MACOSX/\* && \
    rm photogenic.zip

RUN systemctl enable httpd.service
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
