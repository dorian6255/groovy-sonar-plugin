# Base image with OpenJDK 17 + Maven
FROM maven:3.9-amazoncorretto-17-alpine AS build

# Set working directory
WORKDIR /app

# default ENTRYPOINT : run mvn clean package
ENTRYPOINT ["mvn", "clean", "package"]
