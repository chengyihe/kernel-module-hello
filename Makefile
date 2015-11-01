obj-m += hello.o

ifeq ($(KERNEL_PATH),)
  KERNEL_PATH := /lib/modules/$(shell uname -r)/build
endif

all:
	make -C ${KERNEL_PATH} M=$(PWD) modules

clean:
	make -C $(KERNEL_PATH) M=$(PWD) clean
