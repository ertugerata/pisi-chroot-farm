ertugerata/pisi-chroot-farm
# pisi-chroot-farm
docker base img for packaging

# Usage

### Pull image to you docker

    docker pull ertugerata/pisichroot
    
### Run a container with sh

    docker run -it ertugerata/pisichroot bash

### Usage container with Pisi

    docker run ertugerata/pisichroot pisi info 'foo'
    
### Files

- sha1sums
- LICENSE
- README.md