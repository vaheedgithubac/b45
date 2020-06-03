#rkalluru/06-add
FROM        centos:7
RUN         yum install httpd -y
ADD         index.html /var/www/html/index.html
CMD         httpd -DFOREGROUND
