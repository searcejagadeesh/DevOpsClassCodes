FROM openjdk:8-jdk-alpine

COPY target/*.war /opt/
#ENTRYPOINT ["java","-war","/app.jar"]

ENTRYPOINT java $JAVA_OPTS -war /target/addressbook.war
