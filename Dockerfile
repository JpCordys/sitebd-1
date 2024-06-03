FROM maven:3.8.4-openjdk-17-slim AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn package -DskipTests

FROM openjdk:17-alpine
WORKDIR /app
ENTRYPOINT ["java", "-jar", "/app/target/sitebd-0.0.1-SNAPSHOT.war "]
