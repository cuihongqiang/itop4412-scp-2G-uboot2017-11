#!/bin/sh

./mkbl2 spl/u-boot-spl.bin bl2.bin 14336
#dd iflag=dsync oflag=dsync if=./E4412_N.bl1.bin of=/dev/sdb seek=1
dd iflag=dsync oflag=dsync if=./bl2.bin of=/dev/sdb seek=17
#dd iflag=dsync oflag=dsync if=./env.bin of=/dev/sdb seek=49
dd iflag=dsync oflag=dsync if=./u-boot.bin of=/dev/sdb seek=65
#dd iflag=dsync oflag=dsync if=./tzsw_SMDK4412_SCP_2GB.bin of=/dev/sdb  seek=705
sync
