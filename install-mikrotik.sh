#!/bin/bash
#By Anggarda Saputra Wijaya
#Install Mikrotik on VPS Ubuntu
lsblk
#
#
echo "                                                    ";
echo "                                                    ";
echo "   ==============================================   ";
echo "           INSTALL MIKROTIK ON UBUNTU VPS           ";
echo "   ==============================================   ";
echo "                                                    ";
echo -n "   Input Type Your Disk : "
read disk
echo "                                                    ";
echo "   ==============================================   ";
echo "                                                    ";
echo "                                                    ";
#
#
apt update && apt install wget net-tools -y
wget https://download.mikrotik.com/routeros/6.49.18/chr-6.49.18.img.zip -O chr.img.zip
gunzip -c chr.img.zip > chr.img && rm -f chr.img.zip
mount -o loop,offset=512 chr.img /mnt
ADDRESS=$(ip addr show eth0 | grep global | cut -d' ' -f 6 | head -n 1)
GATEWAY=$(ip route list | grep default | cut -d' ' -f 3)
echo "/ip address add address=$ADDRESS interface=[/interface ethernet find where name=ether1]
/ip route add gateway=$GATEWAY
" > /mnt/rw/autorun.scr
umount /mnt
echo u > /proc/sysrq-trigger
dd if=chr.img bs=1024 of=/dev/$disk
reboot

