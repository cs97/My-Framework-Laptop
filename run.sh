#! /bin/sh


case $1 in
	"0") emerge --ask x11-terms/alacritty;;
  
	"1")
    mv .config/sway/config .config/sway/config.old
    cp My-Framework-Laptop/.config/sway/config .config/sway/config;;
  
	"2")
    git clone https://github.com/cs97/rusty-sway-status
    cd rusty-sway-status
    cargo build --release
    cp target/release/status /usr/bin/status;;
    
	"3")
    mv .bashrc .bashrc.old
    cp My-Framework-Laptop/.bashrc .bashrc;;
    
   "4")
    git clone https://github.com/cs97/AlderLakeCtrl
    cd AlderLakeCtrl
    cargo build --release
    cp target/release/AlderLakeCtrl /usr/bin/AlderLakeCtrl

	  "5")
      cat <<EOF >> /etc/systemd/system/AlderLakeCtrl.service
[Unit]
Description=AlderLakeCtrl

[Service]
Type=simple
ExecStart=/usr/bin/AlderLakeCtrl auto

[Install]
WantedBy=multi-user.target
EOF;;

   "6") systemctl enable --now AlderLakeCtrl;;

	"99")
		mv qdgentoo.sh qdgentoo.old
		wget https://raw.githubusercontent.com/cs97/qdgentoo/master/qdgentoo.sh
		chmod +x qdgentoo.sh
		chmod -x qdgentoo.old;;
    
	*)
    
    banner;;
    
    
    
esac
