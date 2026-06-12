#!/bin/bash
#By Anggarda Saputra Wijaya
#Install Mikrotik 7.21on VPS Ubuntu
echo "                                                    ";
lsblk
echo "   ==============================================   ";
echo "           INSTALL MIKROTIK ON UBUNTU VPS           ";
echo "   ==============================================   ";
echo "                                                    ";
echo -n "   Input Type Your Disk : "
read disk
echo "                                                    ";
echo "   ==============================================   ";
apt update && apt install wget net-tools -y
wget https://download.mikrotik.com/routeros/7.21.4/chr-7.21.4.img.zip -O chr.img.zip
gunzip -c chr.img.zip > chr.img && rm -f chr.img.zip
mount -o loop,offset=512 chr.img /mnt
ADDRESS=$(ip addr show ens18 | grep global | cut -d' ' -f 6 | head -n 1)
GATEWAY=$(ip route list | grep default | cut -d' ' -f 3)
echo "/ip address add address=$ADDRESS interface=[/interface ethernet find where name=ether1]
/ip route add gateway=$GATEWAY
" > /mnt/rw/autorun.scr
umount /mnt
echo u > /proc/sysrq-trigger
dd if=chr.img bs=1024 of=/dev/$disk
reboot
