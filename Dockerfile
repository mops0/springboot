FROM amazoncorretto:17
USER root

WORKDIR /myapp
COPY target/szymczys-0.0.1-SNAPSHOT.jar myapp/szymczys-0.0.1-SNAPSHOT.jar

EXPOSE 443
RUN chmod +x myapp/szymczys-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "myapp/szymczys-0.0.1-SNAPSHOT.jar"]
