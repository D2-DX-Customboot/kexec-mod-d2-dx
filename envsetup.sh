#!/bin/bash

# Path to your android ndk ARM build tools
export NDK=/opt/android-ndk/toolchains/arm-linux-androideabi-4.4.3/prebuilt/linux-x86/bin/

# Our bash PATH
export PATH=$NDK:$PATH

# The COMPILED kernel source location
export KERNDIR=/media/disk/android/kernel/gb

# Basic stuff
export CC=arm-linux-androideabi-
export CROSS_COMPILE=arm-linux-androideabi-
export ARCH=arm
