FROM tomcat:alpine
MAINTAINER admin@jfrog.com
RUN wget /jfrog/artifactory/libs-release-local/com/nagarro/ourfirstaap/First-web-app/0.0.1-SNAPSHOT/First-web-app-0.0.1-20210317.121307-1.war /usr/local/tomcat/webapps
 
# ADD  http://localhost:8082/artifactory/libs-release-local/com/nagarro/ourfirstaap/First-web-app/0.0.1-SNAPSHOT/First-web-app-0.0.1-20210317.121307-1.war /usr/local/tomcat/webapps/

EXPOSE 9100

CMD /usr/local/tomcat/bin/cataline.bat run
