FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
ADD ./target/portfolio-1.0.jar app.jar
ADD ./target/application.properties application.properties
ENTRYPOINT ["java" ,"-jar","app.jar"]
