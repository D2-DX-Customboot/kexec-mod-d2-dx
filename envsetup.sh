#!/bin/bash

# Path to your android ndk ARM build tools
export NDK=/home/bikedude880/android-ndk-r8/toolchains/arm-linux-androideabi-4.4.3/prebuilt/linux-x86/bin/

# Our bash PATH
export PATH=$NDK:$PATH

# The COMPILED kernel source location
#export KERNDIR=/media/disk/android/kernel/omap3
export KERNDIR=/home/bikedude880/blackspark-ics-aosp/Kernel/Moto-GB/

# Basic stuff
export CC=arm-linux-androideabi-
export CROSS_COMPILE=arm-linux-androideabi-
export ARCH=arm
