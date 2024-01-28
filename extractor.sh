#!/bin/bash

if [ -f boot.img.lz4 ];then # For Samsung Devices
	lz4 -B6 --content-size -f boot.img.lz4 boot.img
fi

off=$(grep -ab -o SEANDROIDENFORCE boot.img |tail -n 1 |cut -d : -f 1)
dd if=boot.img of=r.img bs=4k count=$off iflag=count_bytes

if [ ! -f phh.pem ];then
    openssl genrsa -f4 -out phh.pem 4096
fi