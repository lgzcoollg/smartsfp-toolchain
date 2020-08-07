#!/bin/bash

debootstrap --arch=amd64 --variant=minbase --components=main,contrib jessie ./rootfs https://snapshot.debian.org/archive/debian/20180623T023722Z/
tar -C ./rootfs -c . | docker import - metrotek/debian8
docker build  --no-cache -t metrotek/smartsfp .

