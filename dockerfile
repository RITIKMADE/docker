FROM alpine
RUN yum install java-1.8.0-openjdk -y
RUN wget -O  https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.91/bin/apache-tomcat-8.5.91.tar.gz ./
RUN tar -xzvf  apache-tomcat-8.5.91.tar.gz  -C  /opt
WORKDIR /opt/apache*/bin
RUN chmod +x catalina.sh
CMD ['catalina.sh','run']
EXPOSE 8080/tcp
