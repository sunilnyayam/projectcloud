FROM centos:latest
MAINTAINER nyayamsunil@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assests/files/fres-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp .rvf markups-kindle/* .
RUN rm -rf __MACOSX markups-knidle kindle.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
