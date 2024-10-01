FROM maven AS build
WORKDIR /tmp
COPY pom.xml /tmp/pom.xml
COPY webapp /tmp/webapp
RUN mvn install

FROM tomcat:8.0-jre8 AS webserver
COPY --from=build /tmp/webapp/target/webapp.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]