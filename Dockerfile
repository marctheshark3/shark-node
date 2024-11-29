FROM openjdk:11-jre-slim

ARG VERSION=5.0.14
WORKDIR /opt/ergo

RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

# Download Ergo jar
RUN curl -L https://github.com/ergoplatform/ergo/releases/download/v${VERSION}/ergo-${VERSION}.jar -o ergo.jar

# Create directories and copy config
RUN mkdir -p /opt/ergo/data
COPY config /opt/ergo/config

WORKDIR /opt/ergo

# Debug: List contents to verify config file
RUN ls -la /opt/ergo/config

EXPOSE 9053 9052

# Explicitly point to config file location
CMD ["java", "-Xmx2g", "-jar", "ergo.jar", "--config", "/opt/ergo/config/ergo.conf"]