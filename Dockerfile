#
# Build stage
#

FROM maven:3.5-jdk-8-alpine AS build
WORKDIR usr/src/app
COPY . ./
RUN mvn clean package


#
# Package stage
#

FROM openjdk:8-jdk-alpine
ARG JAR_NAME="aws-services-0.0.1-SNAPSHOT"
WORKDIR /usr/src/app
COPY --from=build /usr/src/app/target/${JAR_NAME}.jar ./${JAR_NAME}.jar
CMD ["java","-jar", "./aws-services-0.0.1-SNAPSHOT.jar"]