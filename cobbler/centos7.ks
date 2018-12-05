#version=DEVEL
# System authorization information
auth --enableshadow --passalgo=sha512
# Use CDROM installation media
cdrom
# Use graphical install
graphical
# Run the Setup Agent on first boot
firstboot --enable
ignoredisk --only-use=vda
# Keyboard layouts
keyboard --vckeymap=cn --xlayouts='cn'
# System language
lang zh_CN.UTF-8

# Network information
network  --bootproto=dhcp --device=eth0 --onboot=off --ipv6=auto
network  --bootproto=dhcp --device=eth1 --onboot=off --ipv6=auto
network  --bootproto=dhcp --device=eth2 --onboot=off --ipv6=auto
network  --hostname=localhost.localdomain

# Root password
rootpw --iscrypted $6$jSzsLxwzQ628wHyN$p6xTd.u2Yh6c84v5X81xyArDMd0tVrhsRO0tPz//idu.qV4e4oauEGSqE61lCnW95t/niEltR33KPYppU5BAO/
# System timezone
timezone Asia/Shanghai --isUtc
# System bootloader configuration
bootloader --append=" crashkernel=auto" --location=mbr --boot-drive=vda
# Partition clearing information
clearpart --none --initlabel
# Disk partitioning information
part pv.155 --fstype="lvmpv" --ondisk=vda --size=7697
part /var/lib/docker --fstype="xfs" --ondisk=vda --size=32762 --label=docker
part /boot --fstype="xfs" --ondisk=vda --size=500
volgroup centos --pesize=4096 pv.155
logvol /  --fstype="xfs" --size=5601 --name=root --vgname=centos
logvol swap  --fstype="swap" --size=2092 --name=swap --vgname=centos

%packages
@^minimal
@core
kexec-tools

%end

%addon com_redhat_kdump --enable --reserve-mb='auto'

%end
