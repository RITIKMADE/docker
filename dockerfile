FROM centos:7
RUN yum install java-1.8.0-openjdk -y
RUN curl -O  https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.91/bin/apache-tomcat-8.5.91.tar.gz 
RUN tar -xzvf  apache-tomcat-8.5.91.tar.gz  -C  /opt
RUN mv /opt/apache* /opt/apache-tomcat
WORKDIR /opt/apache*/bin
RUN chmod +x catalina.sh
EXPOSE 8080/tcp
CMD ['/opt/apache-tomcat/bin/catalina.sh','run']
