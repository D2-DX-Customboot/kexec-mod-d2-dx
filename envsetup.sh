#!/bin/bash

# Path to your android ndk ARM build tools
export PATH=/opt/android-ndk/toolchains/arm-linux-androideabi-4.4.3/prebuilt/linux-x86/bin/:$PATH
# The COMPILED kernel source location ...make sure not to just use the default config
export KERNDIR=/media/disk/android/kernel/omap3

# Basic stuff
export CC=arm-linux-androideabi-
export CROSS_COMPILE=arm-linux-androideabi-
export ARCH=arm
