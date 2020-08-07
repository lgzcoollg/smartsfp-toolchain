# Smart SFP userspaсe toolchain

This repo contains Docker images for Smart SFP userspace applications toolchain.

Two Docker images are used:
 1. `debian8` is just a required Debian snapshot
 1. `smartsfp` is toolchain built on top of `debian8`

You have two ways to use it:
 1. Run already built images from Docker hub
 1. Build images locally


## I. Run already built images from Docker hub

### Prerequisites for Debian host

 - Install Docker: https://docs.docker.com/engine/install/debian/

### How to run container?

```
docker run --name smartsfp-toolchain -it metrotek/smartsfp
```
### How to build Smart SFP userspaсe applications?

Use `arm-linux-gnueabihf-gcc` or `dpkg-buildpackage -us -uc -a armhf` inside `smartsfp-toolchain` container.



## II. Build images locally

### Prerequisites for Debian host

 - Install Docker: https://docs.docker.com/engine/install/debian/
 - Install debootstrap: `apt-get install debootstrap`

### How to build a Docker images?

```
git clone https://github.com/stcmtk/smartsfp-toolchain
cd smartsfp-toolchain
sudo ./run.sh
```

### How to run container?

```
docker run --name smartsfp-toolchain -it metrotek/smartsfp
```
### How to build Smart SFP userspaсe applications?

Use `arm-linux-gnueabihf-gcc` or `dpkg-buildpackage -us -uc -a armhf` inside `smartsfp-toolchain` container.

## See also

 - Debian 8 container on Docker Hub: https://hub.docker.com/r/metrotek/debian8
 - Smart SFP toolchain container on Docker Hub: https://hub.docker.com/r/metrotek/smartsfp



