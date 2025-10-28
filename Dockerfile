FROM openjdk:17-jdk-slim
# Expose port used by Spring Boot
EXPOSE 8080
# Copy the built jar from the build stage
ADD target/docker-jenkins-integration.jar docker-jenkins-integration.jar
# Run the app
ENTRYPOINT ["java", "-jar", "docker-jenkins-integration.jar"]
