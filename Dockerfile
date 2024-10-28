FROM openjdk:17-jdk-slim
USER root

WORKDIR /myapp
COPY target/szymczys-0.0.1-SNAPSHOT.jar myapp/szymczys-0.0.1-SNAPSHOT.jar

EXPOSE 8080
RUN chmod +x myapp/szymczys-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "myapp/szymczys-0.0.1-SNAPSHOT.jar"]
