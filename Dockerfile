FROM openjdk:11-jre-slim

ARG VERSION=5.0.14
WORKDIR /opt/ergo

RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

# Download Ergo jar
RUN curl -L https://github.com/ergoplatform/ergo/releases/download/v${VERSION}/ergo-${VERSION}.jar -o ergo.jar

# Create all necessary directories
RUN mkdir -p /opt/ergo/data && \
    mkdir -p /opt/ergo/data/wallet/keystore

COPY config/ergo.conf /opt/ergo/config/ergo.conf

EXPOSE 9053 9052

# Start the node
CMD ["java", "-Xmx2g", "-jar", "ergo.jar", "--config", "/opt/ergo/config/ergo.conf"]