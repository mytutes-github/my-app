FROM tomcat:8
LABEL app=my-app
RUN sed -i 's/port="8080"/port="4287"/' ${CATALINA_HOME}/conf/server.xml
CMD ["catalina.sh", "run"]
RUN mv webapps webapps2 &&
    mv webapps.dist/ webapps
COPY target/*.war /usr/local/tomcat/webapps/myweb.war

