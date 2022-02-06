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
sed -i '82{s/4:wan/4:lan/}' /target/linux/ramips/mt7621/base-files/etc/board.d/02_network
git clone https://github.com/1wrt/luci-app-ikoolproxy.git package/lean/luci-app-ikoolproxy
