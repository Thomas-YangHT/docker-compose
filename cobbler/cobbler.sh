#docker run -d --net=host --name cobbler -v /repo:/repo 192.168.254.211:5000/cobbler
mount -t nfs4 192.168.254.5:/ /mnt
[ -d /repo ] || mkdir /repo
mount -t iso9660 /mnt/software/CentOS-7-x86_64-Minimal-1511.iso /repo
docker run --net=host --privileged --name cobbler \
    -v /repo:/repo \
    -v /root/.ssh/id_rsa.pub:/var/www/cobbler/pub/id_rsa.pub \
    -v /opt/cobbler/centos7.ks:/var/lib/cobbler/kickstarts/centos7.ks \
    -v /opt/cobbler/settings:/etc/cobbler/settings \
    -v /opt/cobbler/dhcp.template:/etc/cobbler/dhcp.template \
    -d 192.168.254.211:5000/cobbler
