# My-Framework-Laptop

### sway config
* mv .config/sway/config .config/sway/config.old
* cp My-Framework-Laptop/.config/sway/config .config/sway/config

### sway status
* git clone https://github.com/cs97/rusty-sway-status
* cd rusty-sway-status
* cargo build --release
* cp target/release/status /usr/bin/status

### .bashrc
* mv .bashrc .bashrc.old
* cp cp My-Framework-Laptop/.bashrc .bashrc

### Alder Lake-P Ctrl
* git clone https://github.com/cs97/AlderLakeCtrl
* cd AlderLakeCtrl
* cargo build --release
* cp target/release/AlderLakeCtrl /usr/bin/AlderLakeCtrl

nano /etc/systemd/system/AlderLakeCtrl.service
```
[Unit]
Description=AlderLakeCtrl

[Service]
Type=simple
ExecStart=/usr/bin/AlderLakeCtrl auto

[Install]
WantedBy=multi-user.target
```
* systemctl start AlderLakeCtrl
* systemctl enable AlderLakeCtrl




