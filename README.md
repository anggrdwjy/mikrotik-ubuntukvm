## Proof of Concept - Build MikroTik CHR x86 on Ubuntu Cloud Based Proxmox

### Information

Before using this program, make sure to update the repository `sudo apt update` and install git `sudo apt install git -y` to maximize the running of the program. I am not responsible for any consequences caused by this program. It is recommended to use this script when the new server is installed. This program has been tested on Ubuntu Server 24.04 or Newer

### Features
* Script For Build MikroTik CHR x86 on Ubuntu Cloud Based Proxmox (VPS Proxmox Architecture)

### Tested Version
* Ubuntu 24.04
* Newer

### Issue Bandwidth
* Check Your License MikroTik
* P1 Trial (Limit 1Gbps Trial 60 Days)
* P1 Perpetual (Limit 1Gbps Upload per CHR Interface, Lifetime)
* P10 Perpetual (Limit 10Gbps Upload per CHR Interface, Lifetime)
* P-Unlimited (Unlimited Speed Upload per CHR Interface, Lifetime)

## Installing Program

```
root@ubuntu:/home/ubuntu# git clone https://github.com/anggrdwjy/mikrotik-ubuntukvm.git
Cloning into 'mikrotik-ubuntukvm'...
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
Receiving objects: 100% (3/3), done.
root@ubuntu:/home/ubuntu# cd mikrotik-ubuntukvm/
root@ubuntu:/home/ubuntu/mikrotik-ubuntukvm# chmod -R 777 *
root@ubuntu:/home/ubuntu/mikrotik-ubuntukvm# ls -l
total 4
-rwxrwxrwx 1 root root 1328 Jan  3 10:22 install-mikrotik.sh
root@ubuntu:/home/ubuntu/mikrotik-ubuntukvm#
```

## Running Program

NOTES: Please Check Your Disk Type Before Running Script
```
root@ubuntu:/home/ubuntu/mikrotik-ubuntukvm# ./install-mikrotik.sh

NAME   MAJ:MIN RM SIZE RO TYPE MOUNTPOINTS
sda      8:0    0  30G  0 disk 
├─sda1   8:1    0   1M  0 part 
├─sda2   8:2    0  27G  0 part /
└─sda3   8:3    0   3G  0 part [SWAP]
                                                                                                        
   ==============================================   
           INSTALL MIKROTIK ON UBUNTU VPS           
   ==============================================   
                                                    
   Input Type Your Disk : sda
                                                    
   ==============================================                                                      
                                                    
Hit:1 http://id.archive.ubuntu.com/ubuntu noble InRelease
Hit:2 http://id.archive.ubuntu.com/ubuntu noble-updates InRelease
Hit:3 http://id.archive.ubuntu.com/ubuntu noble-backports InRelease        
Get:4 http://security.ubuntu.com/ubuntu noble-security InRelease [126 kB]  
Get:5 http://security.ubuntu.com/ubuntu noble-security/main amd64 Components [21.5 kB]
Get:6 http://security.ubuntu.com/ubuntu noble-security/restricted amd64 Components [212 B]
Get:7 http://security.ubuntu.com/ubuntu noble-security/universe amd64 Components [71.4 kB]
Get:8 http://security.ubuntu.com/ubuntu noble-security/multiverse amd64 Components [208 B]
Fetched 219 kB in 2s (96.6 kB/s)           
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
25 packages can be upgraded. Run 'apt list --upgradable' to see them.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
wget is already the newest version (1.21.4-1ubuntu4.1).
wget set to manually installed.
The following NEW packages will be installed:
  net-tools
0 upgraded, 1 newly installed, 0 to remove and 25 not upgraded.
Need to get 204 kB of archives.
After this operation, 811 kB of additional disk space will be used.
Get:1 http://id.archive.ubuntu.com/ubuntu noble-updates/main amd64 net-tools amd64 2.10-0.1ubuntu4.4 [204 kB]
Fetched 204 kB in 0s (425 kB/s)   
Selecting previously unselected package net-tools.
(Reading database ... 87308 files and directories currently installed.)
Preparing to unpack .../net-tools_2.10-0.1ubuntu4.4_amd64.deb ...
Unpacking net-tools (2.10-0.1ubuntu4.4) ...
Setting up net-tools (2.10-0.1ubuntu4.4) ...
Processing triggers for man-db (2.12.0-4build2) ...
Scanning processes...                                                                                                                                                                                                
Scanning linux images...                                                                                                                                                                                             

Running kernel seems to be up-to-date.

No services need to be restarted.

No containers need to be restarted.

No user sessions are running outdated binaries.

No VM guests are running outdated hypervisor (qemu) binaries on this host.
--2026-01-03 10:23:42--  https://download.mikrotik.com/routeros/6.49.18/chr-6.49.18.img.zip
Resolving download.mikrotik.com (download.mikrotik.com)... 159.148.147.251, 2a02:610:7501:3000::251
Connecting to download.mikrotik.com (download.mikrotik.com)|159.148.147.251|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 34257478 (33M) [application/zip]
Saving to: ‘chr.img.zip’

chr.img.zip                                                  100%[==============================================================================================================================================>]  32.67M   228KB/s    in 2m 16s  

2026-01-03 10:26:00 (246 KB/s) - ‘chr.img.zip’ saved [34257478/34257478]

Device "eth0" does not exist.
65536+0 records in
65536+0 records out
67108864 bytes (67 MB, 64 MiB) copied, 1.42658 s, 47.0 MB/s

Broadcast message from root@ubuntu on pts/1 (Sat 2026-01-03 10:26:02 UTC):

The system will reboot now!

root@ubuntu:/home/ubuntu/mikrotik-ubuntukvm# 
```

### Verification

Remote SSH or Telnet Your IP Address, Default Login MikroTik Username (Admin) Password (Blank)
```

  MMMM    MMMM       KKK                          TTTTTTTTTTT      KKK
  MMM MMMM MMM  III  KKK  KKK  RRRRRR     OOOOOO      TTT     III  KKK  KKK
  MMM  MM  MMM  III  KKKKK     RRR  RRR  OOO  OOO     TTT     III  KKKKK
  MMM      MMM  III  KKK KKK   RRRRRR    OOO  OOO     TTT     III  KKK KKK
  MMM      MMM  III  KKK  KKK  RRR  RRR   OOOOOO      TTT     III  KKK  KKK

  MikroTik RouterOS 6.49.18 (c) 1999-2025       http://www.mikrotik.com/

[?]             Gives the list of available commands
command [?]     Gives help on the command and list of arguments

[Tab]           Completes the command/word. If the input is ambiguous,
                a second [Tab] gives possible options

/               Move up to base level
..              Move up one level
/command        Use command at the base level

jan/03/2026 10:28:08 system,error,critical login failure for user ubuntu from 10.17.0.5 via ssh

Change your password
  
new password> 
[admin@MikroTik] > 
```

## Support

* [:octocat: Follow me on GitHub](https://github.com/anggrdwjy)
* [🔔 Subscribe me on Youtube](https://www.youtube.com/@anggarda.wijaya)

### Bugs

Please open an issue on GitHub with as much information as possible if you found a bug.
* Your KVM or VPS
* All the logs and message outputted
* etc
