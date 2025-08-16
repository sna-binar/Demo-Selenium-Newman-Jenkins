FROM maven:3.9.6-eclipse-temurin-17
USER root

# Chromium & deps
RUN apt-get update && \
    apt-get install -y chromium chromium-driver fonts-liberation ca-certificates curl git unzip && \
    rm -rf /var/lib/apt/lists/*

# Node.js + Newman
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs && \
    npm i -g newman && \
    rm -rf /var/lib/apt/lists/*

# Beri tahu lokasi binary Chromium
ENV CHROME_BIN=/usr/bin/chromium

WORKDIR /workspace
USER root