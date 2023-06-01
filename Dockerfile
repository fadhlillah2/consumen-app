FROM maven:3.8.6-eclipse-temurin-11-alpine AS maven

WORKDIR /usr/src/app
#COPY . /usr/src/app --> same

COPY pom.xml .
RUN mvn dependency:go-offline

COPY src/ src/
RUN mvn package -DskipTests

FROM openjdk:11
ARG JAR_FILE=consumen-service-0.0.1-SNAPSHOT.jar

WORKDIR /opt/app/

COPY --from=maven /usr/src/app/target/${JAR_FILE} /opt/app

EXPOSE 8087

ENTRYPOINT ["java", "-jar", "consumen-service-0.0.1-SNAPSHOT.jar"]