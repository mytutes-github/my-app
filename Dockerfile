FROM tomcat:8
LABEL app=my-app
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
RUN sed -i 's/port="8080"/port="4287"/' ${CATALINA_HOME}/conf/server.xml
ADD ./tomcat-cas/war/ ${CATALINA_HOME}/webapps/
CMD ["catalina.sh", "run"]

# dummy commit



