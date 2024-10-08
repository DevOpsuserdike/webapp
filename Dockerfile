FROM maven AS build
ARG Name= "Siddhesh Dike"
WORKDIR /tmp
COPY pom.xml /tmp/pom.xml
COPY webapp /tmp/webapp
RUN mvn install
RUN echo ${Name}
RUN sleep 60

FROM tomcat:8.0-jre8 AS webserver
COPY --from=build /tmp/webapp/target/webapp.war /usr/local/tomcat/webapps/webapp.war
#COPY webapp/target/webapp.war /usr/local/tomcat/webapps/webapp.war
EXPOSE 8080
CMD ["catalina.sh", "run"]