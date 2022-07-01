
#!/bin/bash

#Colors
sari="\033[1;33m"
mavi="\033[1;36m"
kirmizi="\033[1;31m"
yesil="\033[1;32m"
f="\033[0m"
mavik="\033[36m"

############################
#Sürüm Güncelleme          #
#v1.0-23.06.2022           #
#lalilax                   #
############################

sudo su -c "systemctl stop seid"
sleep 1
sudo su -c "cd"
sleep 1
sudo su -c "rm -rf sei"
sleep 1
sudo su -c "git clone https://github.com/sei-protocol/sei-chain.git"
sleep 1
cd sei-chain
sudo su -c "git checkout 1.0.5beta"
sleep 1
make install
sleep 1
go build -o build/seid ./cmd/seid
sleep 1
sudo su -c "chmod +x ./build/seid && sudo mv ./build/seid /usr/local/bin/seid"
sleep 1
sudo su -c "mv ~/go/bin/seid /usr/local/bin/seid"
sleep 1
sudo su -c "mv $HOME/sei-chain $HOME/sei"
sleep 1
sudo su -c "systemctl restart seid"

clear
echo -e "${yesil}.__         .__  .__.__                   ${f}"
echo -e "${yesil}|  | _____  |  | |__|  | _____  ___  ___  ${f}"
echo -e "${yesil}|  | \__  \ |  | |  |  | \__  \ \  \/  /  ${f}"
echo -e "${yesil}|  |__/ __ \|  |_|  |  |__/ __ \_>    <   ${f}"
echo -e "${yesil}|____(____  /____/__|____(____  /__/\_ \  ${f}"
echo -e "${yesil}          \/                  \/      \/  ${f}"
echo -e "${yesil}[SEI UPDATE 1.0.5]                        ${f}"
echo -e "${yesil}[YENI SURUM YUKLENDI]                     ${f}"
echo -e "${yesil}[NEW VERSION INSTALLED]                   ${f}"
echo -e "${yesil}journalctl -fu seid -o cat                ${f}"
