# Nextcloud Docker Image

A custom Nextcloud Docker image with PDF thumbnail support
through ImageMagick and Ghostscript integration.

## Features

- Based on official Nextcloud 31.0.7 image
- Support for generating PDF thumbnails and image processing
- Pre-configured ImageMagick policy to allow PDF processing
- Multi-platform support (linux/amd64, linux/arm64)

## Docker Hub

This image is available on Docker Hub at: **[`robinmoser/nextcloud`](https://hub.docker.com/r/robinmoser/nextcloud)**

```bash
docker pull robinmoser/nextcloud
```

The image follows a semantic versioning scheme
based on the underlying Nextcloud version:

- `latest` - Always points to the latest build
- `31` - Major version tag (e.g., for Nextcloud 31.x.x)
- `31.0` - Major.Minor version tag (e.g., for Nextcloud 31.0.x)
- `31.0.7` - Full semantic version (matches the base Nextcloud version)
- `31.0.7-build123` - Specific build with GitHub Actions run number

## License

This project follows the same licensing as the official Nextcloud project.
