#backup
    cp /etc/cobbler/settings{,.ori}
#server IP
    sed -i 's/server: 127.0.0.1/server: 192.168.254.110/' /etc/cobbler/settings
    sed -i 's/next_server: 127.0.0.1/next_server: 192.168.254.110/' /etc/cobbler/settings
#管理dhcp
    sed -i 's/manage_dhcp: 0/manage_dhcp: 1/' /etc/cobbler/settings
#防止重装
    sed -i 's/pxe_just_once: 0/pxe_just_once: 1/' /etc/cobbler/settings
#修改dhcp模板
    sed -i.ori 's#192.168.1#192.168.254#g;22d;23d' /etc/cobbler/dhcp.template
