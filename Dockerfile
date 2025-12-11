# ++++++++++++++++++++++++++++++++++++++
# Dockerfile: robinmoser/nextcloud
# ++++++++++++++++++++++++++++++++++++++

FROM nextcloud:31.0.11
LABEL maintainer="Robin Moser"

# Install dependencies for preview generation
RUN apt-get update && apt-get install -y --no-install-recommends \
    libreoffice-core \
    libreoffice-writer \
    libreoffice-calc \
    libreoffice-impress \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*
