latestVersion=0.36.2
mkdir -p /tmp/frp
wget -O /tmp/frp/frp.tar.gz https://github.com/fatedier/frp/releases/download/v${latestVersion}/frp_${latestVersion}_linux_arm.tar.gz
tar -C /tmp/frp -zxvf /tmp/frp/frp.tar.gz
cp /tmp/frp/frp_${latestVersion}_linux_arm/frpc /usr/bin
chmod +x /usr/bin/frpc
mkdir -p /etc/frp
wget -O /etc/frp/frpc.ini https://raw.githubusercontent.com/kekoray/RaspberryPi-frp/blob/main/frpc.ini
wget -O /etc/systemd/system/frpc.service https://raw.githubusercontent.com/kekoray/RaspberryPi-frp/blob/main/frpc.service
rm -r /tmp/frp
