# My-Framework-Laptop

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

### sway config
* cp My-Framework-Laptop/.config/sway/config .config/sway/config
