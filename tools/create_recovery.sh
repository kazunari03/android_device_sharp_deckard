 #!/bin/bash

 device/sharp/is01/tools/mkbootfs out/target/product/is01/recovery/root > out/target/product/is01/_recovery_ramdisk.img
 device/sharp/is01/tools/mkbootimg --kernel device/sharp/is01/kernel --ramdisk out/target/product/is01/_recovery_ramdisk.img --cmdline "console=ttyMSM2,115200n8 androidboot.hardware=qcom" --base 0x20000000 -o out/target/product/is01/_recovery.img
 ubinize -o out/target/product/is01/ubi_recovery.img -p 128KiB -m 2048 -O 256 device/sharp/is01/tools/ubi.cfg

 rm out/target/product/is01/_recovery_ramdisk.img out/target/product/is01/_recovery.img
