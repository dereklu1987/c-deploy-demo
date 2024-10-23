# Fetch ubuntu image
FROM ubuntu:latest

# Install prerequisites
RUN \
    apt update && \
    apt install -y python3 build-essential

# Build project
RUN \
    python3 test.py

# Command that will be invoked when the container starts
ENTRYPOINT [ "/bin/bash" ]

