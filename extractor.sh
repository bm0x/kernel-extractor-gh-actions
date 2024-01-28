#!/bin/bash

if [ -f boot.img.lz4 ];then # For Samsung Devices
	lz4 -B6 --content-size -f boot.img.lz4 boot.img
fi

magiskboot unpack boot.img