# This is where instructions go\
# The first FROM shows which base image will be used
FROM openjdk:17
# Define a variable that users can pass at build-time to the builder with the docker build
ARG JAR_FILE=target/*.jar
# Copy new files or directories from and adds them to the filesystem of the container at the path
COPY ./target/Spring-Docker-0.0.1-SNAPSHOT.jar app.jar
#Configure a container that will run as an executable.
EXPOSE 9000
ENTRYPOINT ["java","-jar","/app.jar"]