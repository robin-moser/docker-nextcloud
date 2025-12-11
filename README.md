# Nextcloud Docker Image

A custom Nextcloud Docker image with PDF thumbnail support
through ImageMagick and Ghostscript integration.

## Features

- Based on official Nextcloud 31 image
- Integrated support for generating video and document thumbnails through ffmpeg and LibreOffice
- Multi-platform support (linux/amd64, linux/arm64)

## Preview Configuration

To enable preview generation for various file types, add the following to your `config.php`:

```php
'preview_imaginary_url' => 'http://imaginary:9000/',
'enabledPreviewProviders' => [
    'OC\Preview\TXT',
    'OC\Preview\MarkDown',
    'OC\Preview\OpenDocument',
    'OC\Preview\MSOffice2003',
    'OC\Preview\MSOffice2007',
    'OC\Preview\MSOfficeDoc',
    'OC\Preview\Photoshop',
    'OC\Preview\Movie',
    'OC\Preview\MKV',
    'OC\Preview\MP4',
    'OC\Preview\AVI',
    'OC\Preview\MP3',
    'OC\Preview\GIF',
    'OC\Preview\Imaginary',
    'OC\Preview\ImaginaryPDF',
],
```

This image includes the minimal LibreOffice and ffmpeg packages required for generating previews of office documents and video files.

### Imaginary

This configuration uses [Imaginary](https://github.com/h2non/imaginary) for image preview generation instead of the built-in PHP-based approach.
Imaginary is a separate microservice that offloads image processing from the Nextcloud container,
resulting in better performance and lower memory usage on the main application.

Add the following service to your `docker-compose.yml`:

```yaml
imaginary:
  image: nextcloud/aio-imaginary:latest
```

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
