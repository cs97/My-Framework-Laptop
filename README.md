# My-Framework-Laptop

### alacritty
emerge --ask x11-terms/alacritty

### sway config
* mv .config/sway/config .config/sway/config.old
* cp My-Framework-Laptop/.config/sway/config .config/sway/config

### sway status
* git clone https://github.com/cs97/rusty-sway-status
* cd rusty-sway-status
* cargo build --release --features battery-status
* cp target/release/status /usr/bin/status

### .bashrc
* mv .bashrc .bashrc.old
* cp My-Framework-Laptop/.bashrc .bashrc

### Alder Lake-P Ctrl
* git clone https://github.com/cs97/AlderLakeCtrl
* cd AlderLakeCtrl
* cargo build --release
* cp target/release/AlderLakeCtrl /usr/bin/AlderLakeCtrl

/etc/systemd/system/AlderLakeCtrl.service
```
[Unit]
Description=AlderLakeCtrl

[Service]
Type=simple
ExecStart=/usr/bin/AlderLakeCtrl auto
ExecStop=/usr/bin/AlderLakeCtrl performance

[Install]
WantedBy=multi-user.target
```
* systemctl start AlderLakeCtrl
* systemctl enable AlderLakeCtrl

### AMD GPU OC UV...
/etc/default/grub
```
GRUB_CMDLINE_LINUX_DEFAULT="... amdgpu.ppfeaturemask=0xffffffff"
```
### fixes
for kernel 6.4.x on Intel 12th gen cpu
/etc/default/grub
```
GRUB_CMDLINE_LINUX_DEFAULT="...ibt=off tpm_tis.interrupts=0..."
```
touchpad
/etc/default/grub
```
GRUB_CMDLINE_LINUX_DEFAULT="module_blacklist=hid_sensor_hub"
```




