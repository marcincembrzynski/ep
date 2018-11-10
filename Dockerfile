FROM openjdk:8-jdk-alpine
VOLUME /tmp

EXPOSE 8443

ARG DEPENDENCY=target/dependency

ARG JAR_FILE=target/earpiercing-1.0-SNAPSHOT.jar

ADD ${JAR_FILE} earpiercing.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/earpiercing.jar"]