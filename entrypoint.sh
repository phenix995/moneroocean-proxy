#!/bin/bash

# Print working directory and its contents
echo "Working directory: $(pwd)"
ls -la

# Ensure xmrig-proxy is executable
chmod +x ./xmrig-proxy

# Run xmrig-proxy with config
exec ./xmrig-proxy --config=config.json
