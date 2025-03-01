# Stage 1: Build the JAR file
FROM maven:3.9.6-eclipse-temurin-17 AS builder

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Build the application
RUN mvn clean package -DskipTests

# Stage 2: Run the application using your existing configuration
FROM openjdk:17

# Define a variable that users can pass at build-time
ARG JAR_FILE=target/*.jar

# Copy the built JAR from the builder stage
COPY --from=builder /app/target/Spring-Docker-0.0.1-SNAPSHOT.jar app.jar

# Expose the port
EXPOSE 9000

# Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]