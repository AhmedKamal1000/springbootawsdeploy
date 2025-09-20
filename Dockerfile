FROM eclipse-temurin:17-jdk-jammy

# Install curl using apt-get (Debian/Ubuntu base)
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

VOLUME /tmp
EXPOSE 8080

# Copy your built JAR
ADD target/springboot-aws-deploy-service.jar springboot-aws-deploy-service.jar

ENTRYPOINT ["java","-jar","/springboot-aws-deploy-service.jar"]
