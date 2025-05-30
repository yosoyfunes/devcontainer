FROM mcr.microsoft.com/devcontainers/base:jammy

# Instala dependencias y Terragrunt
RUN apt-get update && \
    apt-get install -y wget unzip && \
    wget -O /tmp/terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/v0.56.3/terragrunt_linux_amd64 && \
    chmod +x /tmp/terragrunt && \
    mv /tmp/terragrunt /usr/local/bin/terragrunt && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
