FROM ubuntu
MAINTAINER Docker cjs <jscheng@nkfust.edu.tw>
RUN apt-get update
RUN apt-get install -y wget
RUN cd /
ADD jdk-8u181-linux-x64.tar.gz /
RUN wget https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
RUN tar zxvf apache-tomcat-7.0.93.tar.gz

ENV JAVA_HOME=/jdk1.8.0_181
ENV PATH=$PATH:/jdk1.8.0_181/bin
CMD ["/apache-tomcat-7.0.93/bin/catalina.sh", "run"]

