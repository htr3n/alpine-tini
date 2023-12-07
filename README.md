# Alpine Docker with tini

[Alpine Linux](https://www.alpinelinux.org/) is a lightweight distribution that uses `BusyBox` and `musl` as the base system. As such, the base Alpine Docker image is very small, roughly 5.6MB, and only contains the bare minimum to get up and running.

This image is based on the base [Alpine docker image](https://hub.docker.com/r/library/alpine) plus [`tini`](https://github.com/krallin/tini) for better signal handling.

## Build a new image

Build with the default Alpine version 3.

```sh
docker build --rm --tag=alpine-tini .
```

Build with a specific Alpine version:

```sh
docker build --build-arg="ALPINE_VERSION=3.18" --rm --tag=alpine-tini . 
```

## Start a new container from the image

```sh
docker run -it --rm alpine-tini /bin/sh
```

## Derive a new Docker image

```Dockerfile
FROM alpine-tini

RUN ...

CMD [...]
```
