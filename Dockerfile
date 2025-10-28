FROM openjdk:17-jdk-slim
# Expose port used by Spring Boot
EXPOSE 8080
# Copy the built jar from the build stage
ADD target/devops-integration.jar devops-integration.jar
# Run the app
ENTRYPOINT ["java", "-jar", "devops-integration.jar"]
