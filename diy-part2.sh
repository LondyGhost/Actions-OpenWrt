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
# rm -rf target/linux/ipq806x/files/arch/arm/boot/dts/qcom-ipq8064-d7800.dts
# mkdir dts
# git clone https://github.com/LondyGhost/DL.git dts
# cp -rf dts/qcom-ipq8064-d7800.dts target/linux/ipq806x/files/arch/arm/boot/dts/
