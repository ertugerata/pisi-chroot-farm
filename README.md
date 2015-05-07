[![](https://badge.imagelayers.io/ertugerata/pisi-chroot-farm.svg)](https://imagelayers.io/?images=ertugerata/pisi-chroot-farm:latest 'Get your own badge on imagelayers.io')

ertugerata/pisi-chroot-farm
# pisi-chroot-farm
docker base img for packaging

# Usage

### Pull image to you docker

    docker pull ertugerata/pisi-chroot-farm
    
### Run a container with bash

    docker run -it ertugerata/pisi-chroot-farm bash

### Usage container with Pisi

    docker run ertugerata/pisi-chroot-farm pisi info 'foo'
