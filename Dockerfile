# Use a lightweight OpenJDK 17 base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged JAR file from your Maven build into the container
# The 'target' directory is created by 'mvn clean install'
COPY target/todo-app-0.0.1.jar app.jar

# Define the command to run the Java application when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]