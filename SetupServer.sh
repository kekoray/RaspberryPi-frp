#!/usr/bin/env bash

latestVersion=0.36.2
mkdir -p /tmp/frp
wget -O /tmp/frp/frp.tar.gz https://github.com/fatedier/frp/releases/download/v${latestVersion}/frp_${latestVersion}_linux_amd64.tar.gz
tar -C /tmp/frp -zxvf /tmp/frp/frp.tar.gz
cp /tmp/frp/frp_${latestVersion}_linux_amd64/frps /usr/bin
chmod +x /usr/bin/frps
mkdir -p /etc/frp
wget -O /etc/frp/frps.ini https://github.com/kekoray/RaspberryPi-frp/blob/main/frps.ini
wget -O /etc/systemd/system/frps.service https://github.com/kekoray/RaspberryPi-frp/blob/main/frps.service
rm -r /tmp/frp 
