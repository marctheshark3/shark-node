FROM openjdk:11-jre-slim

ARG VERSION=5.0.14
WORKDIR /opt/ergo

RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

# Download Ergo jar
RUN curl -L https://github.com/ergoplatform/ergo/releases/download/v${VERSION}/ergo-${VERSION}.jar -o ergo.jar

COPY config/ergo.conf /opt/ergo/ergo.conf

EXPOSE 9053 9052

# Simplified command for light client
CMD ["java", "-Xmx2g", "-jar", "ergo.jar", "--config", "ergo.conf"]