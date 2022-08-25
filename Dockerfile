FROM centos:latest
MAINTAINER nyayamsunil@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page282/astro-motion.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip astro-motion.zip
RUN cp .rvf templatemo_560_astro_motion/* .
RUN rm -rf templatemo_560_astro_motion astro-motion.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
