# In this string we need to use -D__SOME__ command for define which platform we use
# And C preprocessor use only code for platform, we defined
# For example if we use Texas Instruments OMAP 3430 - we should use
# EXTRA_CFLAGS += -D__PLAT_TI_OMAP3430__
# Else if we need for Freescale i.MX31 - we should use
# EXTRA_CFLAGS += -D__PLAT_FREESCALE_IMX31__

# I don't yet have this fully set up for the droid x yet
# This line seems to work on my X, otherwise use the line
# That's commented out.
EXTRA_CFLAGS += -D__PLAT_TI_OMAP3430__ -Wall -mfpu=neon -DCONFIG_KEXEC -fno-pic
CPPFLAGS=-I/opt/android-ndk/toolchains/arm-linux-androideabi-4.4.3/platforms/android-8/arch-arm/
LDFLAGS=-static --sysroot=/opt/android-ndk/toolchains/arm-linux-androideabi-4.4.3/platforms/android-8/arch-arm/

obj-m += kexec_load.o
kexec_load-objs := init-mm.o kexec.o machine_kexec.o mmu.o sys.o core.o relocate_kernel.o \
	proc-v7.o tlb-v7.o cache-v7.o abort-ev7.o copypage-v6.o entry-common.o driver_sys.o

all:
	make -C $(KERNDIR) M=$(PWD) modules

clean:
	rm -rf *.o *.order *.ko .tmp_versions Module.symvers Modules.order
