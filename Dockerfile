FROM centos:7

RUN yum install httpd -y

COPY index.html /var/www/html

COPY script.js /var/www/html

COPY style.css /var/www/html 

CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]

EXPOSE 80
