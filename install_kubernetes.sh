#!/bin/bash

sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb http://apt.kubernetes.io kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubeadm kubectl kubelet kubernetes-cni

# enable cgroups memory and disable swap
echo "dwc_otg.lpm_enable=0 console=serial0,115200 console=tty1 root=PARTUUID=83c04474-02 rootfstype=ext4 elevator=deadline fsck.repair=yes rootwait cgroup_enable=memory cgroup_memory=1" | sudo tee /boot/cmdline.txt
sudo systemctl disable dphys-swapfile

echo "Restart system for changes to take effect: sudo reboot"
