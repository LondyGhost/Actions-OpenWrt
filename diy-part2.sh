#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
sed -i '252,257d' target/linux/ipq806x/files/arch/arm/boot/dts/qcom-ipq8064-d7800.dts
sed -i 's/0x42000000 0xe000000/0x42000000 0x1e000000/g' target/linux/ipq806x/files/arch/arm/boot/dts/qcom-ipq8064-d7800.dts
sed -i 's/0x1880000 0x1C00000/c0x1880000 0x6080000/g' target/linux/ipq806x/files/arch/arm/boot/dts/qcom-ipq8064-d7800.dts
