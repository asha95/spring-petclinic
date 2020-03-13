FROM openjdk:8-jre-alpine


RUN mkdir -p /apps/applications/springpetclinic
Run mkdir -p /apps/applications/logs

COPY target/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar   /apps/applications/springpetclinic/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar

EXPOSE 9090

ENTRYPOINT ["sh", "-c", "java -jar  /apps/applications/springpetclinic/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar"]
