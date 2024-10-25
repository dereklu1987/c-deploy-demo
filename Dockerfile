# Fetch ubuntu image
FROM ubuntu:latest

# Install prerequisites
RUN \
    apt update && \
    apt install -y python3 build-essential

# Copy project into image
COPY test.py /test.py
COPY main.c /main.c

# Build project
RUN \
    python3 test.py

# Command that will be invoked when the container starts
ENTRYPOINT [ "/bin/bash" ]

