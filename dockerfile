# Base image Ubuntu
FROM ubuntu:latest

# Update and upgrade image
RUN apt-get update && apt-get upgrade -y

# Install necessary packages
RUN apt-get install -y git wget tar ca-certificates curl build-essential libuv1-dev libssl-dev libhwloc-dev cmake uuid-dev libmicrohttpd-dev

# Download proxy
RUN wget https://github.com/MoneroOcean/xmrig-proxy/releases/download/v6.21.1-mo2/xmrig-proxy-v6.21.1-mo2-lin64.tar.gz

# Extract proxy
RUN mkdir -p /xmrig-proxy && tar xf xmrig-proxy-v6.21.1-mo2-lin64.tar.gz -C /xmrig-proxy

# Remove tar file
RUN rm xmrig-proxy-v6.21.1-mo2-lin64.tar.gz

# Copy config file
COPY config.json /xmrig-proxy

# Copy entrypoint script
COPY entrypoint.sh /xmrig-proxy

# Change directory
WORKDIR /xmrig-proxy

# Give permission
RUN chmod +x ./entrypoint.sh

# Create volume
VOLUME /xmrig-proxy:/xmrig-proxy

# Port
EXPOSE 3333

# Use entrypoint script
ENTRYPOINT ["./entrypoint.sh"]
