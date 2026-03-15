FROM --platform=linux/arm64 eclipse-temurin:25-jre-alpine
LABEL authors="Ben Shabowski"

ARG SPRING_PROFILES_ACTIVE
ENV SPRING_PROFILES_ACTIVE=${SPRING_PROFILES_ACTIVE}

WORKDIR /app
COPY /target/oni-1.0.0.jar /app/oni-1.0.0.jar

EXPOSE 2006

CMD ["java", "-jar", "oni-1.0.0.jar"]
