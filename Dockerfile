#FROM maven AS build
#WORKDIR /tmp
#COPY pom.xml /tmp/pom.xml
#COPY webapp /tmp/webapp
#RUN mvn install

FROM tomcat AS webserver
#COPY --from=build /tmp/webapp/target/webapp.war /usr/local/tomcat/webapps/webapp.war