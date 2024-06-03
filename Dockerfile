FROM openjdk:17-alpine
WORKDIR /app
COPY pom.xml .
COPY src ./src
COPY .mvn .mvn
COPY mvnw .
RUN chmod 777 mvnw
RUN mvn package -DskipTests
ENTRYPOINT ["java", "-jar", "/app/target/sitebd-0.0.1-SNAPSHOT.war "]
