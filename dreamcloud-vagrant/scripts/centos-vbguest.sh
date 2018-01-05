#!/bin/sh
# centos base box virtualbox guest tool script for packer
# Robert Wang @github.com/robertluwang
# Jan 4th, 2018

yum install -y -q gcc make kernel-devel bzip2 binutils patch libgomp glibc-headers glibc-devel kernel-headers  kernel-devel-`uname -r` 

curl -LO http://download.virtualbox.org/virtualbox/5.2.4/VBoxGuestAdditions_5.2.4.iso
mount -o loop,ro VBoxGuestAdditions_5.2.4.iso /mnt
sh -E /mnt/VBoxLinuxAdditions.run
rm VBoxGuestAdditions_5.2.4.iso
umount /mnt


