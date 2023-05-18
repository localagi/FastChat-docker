# FastChat-docker
Sophisticated docker builds for [lm-sys/FastChat](https://github.com/lm-sys/FastChat). Runs in 1 step with out-of-the-box model download. Tweakable. Scaleable.
Supports multiplatform `amd64`, `arm64`

**Supported versions:**
* main (default)
* 0.2.9
* 0.2.5

See [Releases](https://github.com/localagi/FastChat-docker/releases)


## Running
##### NVIDIA card required
These containers require `nvidia-container-toolkit` and reboot

### "1-click"-Setup
The following wil get all fastchat images and fastchat's default model on startup.

* get `docker-compose.yml` (clone, copy or else) 
* Run `docker compose up`
* wait for model download (~7GB)
* open/refresh `http://localhost:3000` 

### version selection
`FASTCHAT_VERSION=0.2.9`

### updating to latest `main`
`docker compose pull`

### cleanup
`docker compose rm`

## Contributing

When there is a new version of FastChat or you require the latest main build, feel free to open an issue

## Problems?

https://github.com/localagi/FastChat-docker/issues
