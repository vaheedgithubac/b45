#rkalluru/09-arg
FROM        centos
ARG         COURSE_NAME
RUN         yum install httpd -y
RUN         echo Welcome to $COURSE_NAME >/var/www/html/index.html
CMD         httpd -DFOREGROUND
