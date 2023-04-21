FROM centos:latest
MAINTAINER surya.udhaya@gmail.com

# Disable mirrorlist and enable baseurl in CentOS repositories
RUN sed -i -e "s|^mirrorlist=|#mirrorlist=|g" /etc/yum.repos.d/CentOS-*.repo && \
    sed -i -e "s|^#baseurl=http://mirror.centos.org/$contentdir|baseurl=https://mirrors.aliyun.com/centos/$releasever|g" /etc/yum.repos.d/CentOS-*.repo

# Update packages and install Apache, zip, and unzip
RUN yum -y update && \
    yum -y install httpd && \
    yum -y install zip unzip && \
    rm -rf /var/cache/yum/*

WORKDIR /var/www/html/
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
COPY photogenic.zip ./
RUN unzip photogenic.zip && \
    cp -rvf photogenic/* . && \
    rm -rf photogenic photogenic.zip

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80