FROM ubuntu:latest
LABEL authors="Ben Shabowski"

FROM arm64v8/openjdk:21-jdk-buster

WORKDIR /app
COPY /target/oni-1.0.0.jar /app/oni-1.0.0.jar

EXPOSE 2006

CMD ["java", "-jar", "-Dspring.profiles.active=cluster", "oni-1.0.0.jar"]
