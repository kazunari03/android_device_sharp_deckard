### CWMリカバリのビルド

```shell
$ cd cyanogenmod
$ . build/envsetup.sh
$ make -j8 otatools
$ . build/tools/device/makerecoveries.sh full_is01-eng 2> error.log
$ bash device/sharp/is01/tools/create_recovery.sh 2> error.log
```

### Kernelのビルド

```shell
$ git clone git://github.com/PyYoshi/b2g_kernel_sharp_is01.git
$ cd b2g_kernel_sharp_is01
$ make -j8 ARCH=arm CROSS_COMPILE=$PWD/../cyanogenmod/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi- 2>error.log
```

