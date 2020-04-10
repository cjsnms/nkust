FROM java
MAINTAINER Docker cjs <jscheng@nkust.edu.tw>
RUN apt-get update
RUN apt-get install -y wget
RUN cd /
RUN wget https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
RUN tar zxvf apache-tomcat-7.0.93.tar.gz
CMD ["/apache-tomcat-7.0.93/bin/catalina.sh", "run"]
EXPOSE 8080

