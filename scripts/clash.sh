#!/bin/bash

echo "Start Clash Core Download !"
echo "Current Path: $PWD"

mkdir -p files/etc/openclash/core


CLASH_DEV_URL="https://raw.githubusercontent.com/vernesong/OpenClash/core/master/dev/clash-linux-amd64.tar.gz"
CLASH_TUN_URL=$(curl -fsSL https://api.github.com/repos/vernesong/OpenClash/contents/master/premium\?ref\=core | grep download_url | grep amd64 | awk -F '"' '{print $4}')
CLASH_META_URL="https://raw.githubusercontent.com/vernesong/OpenClash/core/master/meta/clash-linux-amd64.tar.gz"

CLASH_DEV_URL2="https://github.com/SunHHB/ShellCrash/blob/master/bin/meta/clash-linux-amd64.tar.gz"
CLASH_TUN_URL2="https://github.com/SunHHB/ShellCrash/blob/master/bin/clashpre/clash-linux-amd64.tar.gz"
CLASH_META_URL2="https://github.com/SunHHB/ShellCrash/blob/master/bin/meta/clash-linux-amd64.tar.gz"
GEOIP_URL="https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat"
GEOSITE_URL="https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat"

GEO_MMDB="https://github.com/alecthw/mmdb_china_ip_list/raw/release/lite/Country.mmdb"
GEO_SITE="https://github.com/Loyalsoldier/v2ray-rules-dat/raw/release/geosite.dat"
GEO_IP="https://github.com/Loyalsoldier/v2ray-rules-dat/raw/release/geoip.dat"
GEO_META="https://github.com/MetaCubeX/meta-rules-dat/raw/release/geoip.metadb"

# wget -qO- $CLASH_DEV_URL | tar xOvz > files/etc/openclash/core/clash
# wget -qO- $CLASH_TUN_URL | gunzip -c > files/etc/openclash/core/clash_tun
# wget -qO- $CLASH_META_URL | tar xOvz > files/etc/openclash/core/clash_meta
# wget -qO- $GEOIP_URL > files/etc/openclash/GeoIP.dat
# wget -qO- $GEOSITE_URL > files/etc/openclash/GeoSite.dat

wget -qO- $CLASH_DEV_URL2 | tar xOvz > files/etc/openclash/core/clash
wget -qO- $CLASH_TUN_URL2 | tar xOvz >  files/etc/openclash/core/clash_tun
wget -qO- $CLASH_META_URL2 | tar xOvz >  files/etc/openclash/core/clash_meta


wget -qO- $GEO_IP > files/etc/openclash/GeoIP.dat
wget -qO- $GEO_SITE > files/etc/openclash/GeoSite.dat
wget -qO- $GEO_MMDB > files/etc/openclash/Country.mmdb
wget -qO- $GEO_META > files/etc/openclash/GeoIP.metadb

chmod +x files/etc/openclash/core/clash*

exit 0
