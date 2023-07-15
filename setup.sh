#!/bin/sh

# alacritty
emerge --ask x11-terms/alacritty

# sway config
wget https://raw.githubusercontent.com/cs97/My-Framework-Laptop/main/.config/sway/config
mv .config/sway/config .config/sway/config.old
mv config .config/sway/config

# sway status
git clone https://github.com/cs97/rusty-sway-status
cd rusty-sway-status
cargo build --release
cp target/release/status /usr/bin/status

# .bashrc
mv .bashrc .bashrc.old
wget https://raw.githubusercontent.com/cs97/My-Framework-Laptop/main/.bashrc

# AlderLakeCtrl
git clone https://github.com/cs97/AlderLakeCtrl
cd AlderLakeCtrl
cargo build --release
cp target/release/AlderLakeCtrl /usr/bin/AlderLakeCtrl

# AlderLakeCtrl service
wget https://raw.githubusercontent.com/cs97/My-Framework-Laptop/main/etc/systemd/system/AlderLakeCtrl.service
mv AlderLakeCtrl.service /etc/systemd/system/AlderLakeCtrl.service

systemctl enable --now AlderLakeCtrl

# Grub 
wget https://raw.githubusercontent.com/cs97/My-Framework-Laptop/main/etc/default/grub
mv grub /etc/default/grub

grub-mkconfig -o /boot/grub/grub.cfg





