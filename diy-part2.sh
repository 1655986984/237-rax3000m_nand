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
#sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# Modify hostname
sed -i 's/ImmortalWrt/RAX3000M/g' package/base-files/files/bin/config_generate

#修改wifi名称（mtwifi-cfg）
sed -i 's/ImmortalWrt-2.4G/CMCC_2.4G/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
sed -i 's/ImmortalWrt-5G/CMCC_5G/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh

#wifi加密方式，没有是none
sed -i 's/encryption=none/encryption=psk2/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#wifi密码
sed -i 's/key=15581822425/key=1234567890/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
