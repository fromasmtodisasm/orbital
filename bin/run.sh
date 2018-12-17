#!/usr/bin/env bash

# Run Orbital
./qemu-system-ps4 \
    -bios ./ubios.bin \
    -kernel ./boot.img \
    -drive file=hdd.qcow2 \
    -drive file=fat:sflash/,read-only=off,media=disk \
    -monitor stdio -smp 8 -display orbital \
    ${@}
