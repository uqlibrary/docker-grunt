docker-grunt
============

This repository contains a Dockerfile of grunt for Docker's automated build published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

### Installation

1. Install [Docker](https://www.docker.com/).

2. Download the [automated build](https://registry.hub.docker.com/u/uqlibrary/docker-grunt/) from the public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull uqlibrary/docker-grunt`

   (or, you can build an image from Dockerfile: `docker build -t uqlibrary/docker-grunt .)

### Usage

1. Start the container:

    ```sh
    docker run uqlibrary/docker-grunt
    ```

After few seconds, open `http://<host>:8001` to see the result.
