FROM tomcat:8.5.35-jre10
MAINTAINER Docker cjs <jscheng@nkust.edu.tw>
RUN wget https://tomcat.apache.org/tomcat-8.0-doc/appdev/sample/sample.war
ADD sample.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]

