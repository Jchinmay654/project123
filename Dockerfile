FROM centos:7.9.2009
RUN yum -y update && yum -y install httpd && yum clean all
RUN systemctl enable httpd
RUN echo "Welcome to Google!" > /var/www/html/index.html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]




