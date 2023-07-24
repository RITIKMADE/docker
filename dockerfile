FROM centos:7
RUN yum install httpd -y 
#CMD ['systemctl','start','httpd']
ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/index.html /var/www/html/index.html
EXPOSE 80
CMD ['httpd','-DFOREGROUND']