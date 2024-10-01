FROM maven AS build
RUN pwd
COPY pom.xml /tmp/pom.xml
#COPY ../webapp /tmp/webapp
RUN ls /tmp
RUN mvn install
