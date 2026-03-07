# ═══════════════════════════════════════════════════════════════════
#  STAGE 1 — BUILD
#  Uses full Maven + JDK image to compile and package the application
# ═══════════════════════════════════════════════════════════════════
FROM maven:3.9.6-eclipse-temurin-17 AS builder

WORKDIR /app

# Copy dependency descriptor first (Docker layer caching — only re-downloads
# dependencies when pom.xml changes, not on every source change)
COPY pom.xml .
RUN mvn dependency:go-offline -q

# Copy the rest of the source code
COPY src ./src

# Build the fat JAR, skip tests for faster image build
RUN mvn clean package -DskipTests -q

# ═══════════════════════════════════════════════════════════════════
#  STAGE 2 — RUN
#  Uses a slim JRE-only image — much smaller final image (~200 MB vs ~600 MB)
# ═══════════════════════════════════════════════════════════════════
FROM eclipse-temurin:17-jre-alpine

# Create a non-root user for security best practices
RUN addgroup -S lifeapp && adduser -S lifeapp -G lifeapp

WORKDIR /app

# Copy only the built JAR from the builder stage
COPY --from=builder /app/target/*.jar app.jar

# Change ownership to non-root user
RUN chown lifeapp:lifeapp app.jar

USER lifeapp

# Expose the Spring Boot default port
EXPOSE 8080

# JVM tuning for containerised environments:
#   -XX:+UseContainerSupport         → honour Linux cgroup memory/CPU limits
#   -XX:MaxRAMPercentage=75.0        → use up to 75% of container RAM for heap
#   -Djava.security.egd=...          → faster startup on Linux (entropy source)
ENTRYPOINT ["java", \
  "-XX:+UseContainerSupport", \
  "-XX:MaxRAMPercentage=75.0", \
  "-Djava.security.egd=file:/dev/./urandom", \
  "-jar", "app.jar"]
