FROM openjdk:17
# indicate the jar url to docker wrapp
ARG JAR_FILE=target/*.jar

ADD ${JAR_FILE} api-service.jar

ENTRYPOINT ["java","-jar","api-service.jar"]

EXPOSE 80
