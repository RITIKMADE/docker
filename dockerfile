FROM centos:7
RUN yum install httpd -y 
#CMD ['systemctl','start','httpd']
ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/index.html /var/www/html/index.html
#RUN  echo ProxyPass /student http://localhost:8080/student
#RUN Eecho ProxyPassReverse /student http://localhost:8080/student
EXPOSE 80
CMD ["httpd","-DFOREGROUND"]
