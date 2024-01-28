#!/bin/bash

# Unpack recovery
mkdir unpack
cd unpack
../magiskboot unpack ../extracted.img
../magiskboot cpio ramdisk.cpio extract