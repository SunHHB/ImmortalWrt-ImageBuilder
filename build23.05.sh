#!/bin/bash

# 打印 info
make info
# 主配置名称
PROFILE="generic"
PACKAGES=""
# 主题
PACKAGES="$PACKAGES luci-theme-argon luci-i18n-argon-config-zh-cn"
# 常用kmod组件
PACKAGES="$PACKAGES git bash"
PACKAGES="$PACKAGES kmod-usb2 kmod-usb3 kmod-usb-ohci kmod-usb-uhci usbutils"
PACKAGES="$PACKAGES kmod-usb-printer"
# MT76x2u 网卡驱动或无线组件
PACKAGES="$PACKAGES kmod-mt76x2u hostapd wpa-supplicant"
# 常用软件服务
PACKAGES="$PACKAGES luci-i18n-usb-printer-zh-cn"
PACKAGES="$PACKAGES luci-i18n-ttyd-zh-cn"
#PACKAGES="$PACKAGES luci-i18n-vlmcsd-zh-cn"
PACKAGES="$PACKAGES luci-i18n-wol-zh-cn"
PACKAGES="$PACKAGES luci-i18n-ddns-go-zh-cn"
PACKAGES="$PACKAGES luci-i18n-autoreboot-zh-cn"
# PACKAGES="$PACKAGES luci-i18n-ramfree-zh-cn"
PACKAGES="$PACKAGES luci-i18n-cloudflared-zh-cn"

# tailscale
PACKAGES="$PACKAGES tailscale"
PACKAGES="$PACKAGES luci-app-tailscale"
PACKAGES="$PACKAGES luci-i18n-tailscale-zh-cn"

#PACKAGES="$PACKAGES luci-i18n-ddns-zh-cn"
# upnp
PACKAGES="$PACKAGES luci-i18n-upnp-zh-cn"
# OpenClash 代理
PACKAGES="$PACKAGES luci-app-openclash"
# Docker 组件
# PACKAGES="$PACKAGES luci-lib-docker luci-i18n-dockerman-zh-cn"
# homeproxy 组件
# PACKAGES="$PACKAGES luci-i18n-homeproxy-zh-cn"
# alsit 组件	
PACKAGES="$PACKAGES alist luci-i18n-alist-zh-cn"
# mosdns 组件	
PACKAGES="$PACKAGES luci-i18n-mosdns-zh-cn"
# XUNLEI组件
# PACKAGES="$PACKAGES libc6-compat xunlei luci-app-xunlei luci-i18n-xunlei-zh-cn"
# 宽带监控 Nlbwmon
PACKAGES="$PACKAGES luci-i18n-nlbwmon-zh-cn"
# Diskman 磁盘管理
PACKAGES="$PACKAGES luci-i18n-diskman-zh-cn"
# zsh 终端
PACKAGES="$PACKAGES zsh"
# Vim 完整版，带语法高亮
PACKAGES="$PACKAGES vim-fuller"
# 界面翻译补全
PACKAGES="$PACKAGES luci-i18n-opkg-zh-cn luci-i18n-base-zh-cn luci-i18n-firewall-zh-cn"
# 移除不需要的包

# 一些自定义文件
FILES="files"


make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"
