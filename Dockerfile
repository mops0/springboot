FROM openjdk:11-jre-slim

WORKDIR /myapp

COPY target/szymczys-0.0.1-SNAPSHOT.jar myapp/szymczys-0.0.1-SNAPSHOT.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/szymczys-0.0.1-SNAPSHOT.jar"]
