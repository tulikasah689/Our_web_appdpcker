FROM tomcat:alpine
LABEL maintainer="tulikakumari"
COPY target/our-web-app.war /usr/local/tomcat/webapps/


EXPOSE 9100

CMD /usr/local/tomcat/bin/cataline.bat run
