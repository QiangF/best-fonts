#!/bin/bash
# 维护：Yuchen Deng [loaden] 钉钉群：35948877
# QQ群：19346666、111601117

if [ -f /usr/bin/pacman ]; then
    sudo pacman -Rsc noto-fonts-cjk
    exit
elif [ ! -f /usr/bin/apt ]; then
    echo Not the dpkg system.
    exit
fi

sudo apt purge fonts-noto-cjk* -y
sudo apt purge fonts-noto-*
sudo apt purge fonts-arphic-* -y
sudo apt purge fonts-opendyslexic -y
sudo apt purge fonts-deva* -y
sudo apt purge fonts-mlym* -y
sudo apt purge fonts-telu* -y
sudo apt purge fonts-lohit* -y
sudo apt purge fonts-tlwg* -y
sudo apt purge fonts-sil* -y
sudo apt purge fonts-kacst* -y
sudo apt purge -y fonts-khmeros-core
sudo apt purge -y fonts-lklug-sinhala
sudo apt purge -y fonts-tibetan-machine
sudo apt purge -y fonts-pagul
sudo apt purge -y fonts-lao
sudo apt purge fonts-dejavu-extra -y
sudo apt purge fonts-uni* -y
sudo apt purge fonts-ipa* -y
sudo apt purge -y fonts-font-awesome
sudo apt purge -y fonts-farsiweb
sudo apt purge -y fonts-lato
sudo apt purge -y fonts-dzongkha
sudo apt purge -y fonts-vlgothic
sudo apt purge -y fonts-ukij-uyghur
sudo apt purge -y fonts-khmeros
sudo apt purge -y fonts-bpg-georgian
sudo apt purge -y fonts-nanum
sudo apt purge -y fonts-freefont-ttf
sudo apt purge -y fonts-arabeyes
sudo apt purge -y fonts-wqy-*

sudo apt install fonts-wqy-microhei fonts-liberation -y
find /etc/fonts/conf.d/ -name "*wqy*" -exec sudo rm -v {} \;
sudo apt install fonts-dejavu-core fonts-inter -y #plymouth
sudo apt autopurge -y
find /etc/fonts/conf.d/ -name "*.conf" | sort
