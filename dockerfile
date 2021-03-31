FROM tomcat:alpine
LABEL maintainer="tulikakumari"
COPY target/our-web-app.war /usr/local/tomcat/webapps/


EXPOSE 8080

CMD ["catalina.sh", "run"]
