FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
ADD ./target/WebPortfolio-2.0.jar app.jar
ADD application.properties ./
EXPOSE 8085
ENTRYPOINT ["java" ,"-jar","app.jar"]
