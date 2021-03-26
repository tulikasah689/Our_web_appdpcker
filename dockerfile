FROM maven:3.5.4-jdk-8-alpine as maven

COPY ./pom.xml ./pom.xml

COPY ./src ./src

RUN mvn dependency:go-offline -B

RUN mvn package

FROM openjdk:8u171-jre-alpine

WORKDIR /shilpabains

COPY --from=maven target/our-web-app-*.jar ./our-web-app.jar

CMD ["java", "-jar", "./our-web-app.jar"]
