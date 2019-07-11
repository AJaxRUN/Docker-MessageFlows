FROM tomcat:8-jre8

MAINTAINER "administrator"

ADD web.xml /usr/local/tomcat/conf
ADD jta.jar /usr/local/tomcat/lib
ADD volante-runtime-license-1.0.jar /usr/local/tomcat/lib
ADD SimpleServer.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]

EXPOSE 8080
