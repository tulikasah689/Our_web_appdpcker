FROM tomcat:alpine

RUN wget -O /usr/local/tomcat/webapps/launchstation04.war  http://localhost:8082/artifactory/libs-release-local/com/nagarro/ourfirstaap/First-web-app/0.0.1-SNAPSHOT/First-web-app-0.0.1-20210317.121307-1.war

EXPOSE 9100

CMD /usr/local/tomcat/bin/cataline.bat run
