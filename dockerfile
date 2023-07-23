FROM centos:7
RUN yum install java-1.8.0-openjdk -y
RUN curl -O  https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.91/bin/apache-tomcat-8.5.91.tar.gz 
RUN tar -xzvf  apache-tomcat-8.5.91.tar.gz  -C  /opt
RUN mv /opt/apache* /opt/apache-tomcat
RUN chmod +x /opt/apache-tomcat/bin/catalina.sh
COPY ./student.war /opt/apache-tomcat/webapps/
COPY ./mysql-connector.jar /opt/apache-tomcat/lib/
EXPOSE 8080/tcp
WORKDIR /opt/apache-tomcat/bin/
CMD ["./catalina.sh", "run"]
