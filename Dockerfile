# ++++++++++++++++++++++++++++++++++++++
# Dockerfile: robinmoser/nextcloud
# ++++++++++++++++++++++++++++++++++++++

FROM nextcloud:23.0.10
LABEL maintainer="Robin Moser"

RUN apt-get update && apt-get install -y \
    imagemagick \
    ghostscript \
    && rm -rf /var/lib/apt/lists/*

# Imagemagick Policy: PDF Bearbeitung zulassen
RUN sed -i 's/\(^ *<policy.*rights="\)\([^"]*\)\(".*PDF.*\/>\)/\1read|write\3/1' \
    /etc/ImageMagick-6/policy.xml
