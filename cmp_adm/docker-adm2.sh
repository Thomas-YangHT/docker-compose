docker run --name adm \
-v /opt/nginxadm:/etc/nginxadm \
-v /opt/nginx:/etc/nginx \
-v /opt/bind/bind/etc:/etc/bind \
-v /opt/haproxy:/etc/haproxy \
-v /opt/adm:/usr/share/nginx/html/adm \
-v /opt/cmp_adm/index.html:/usr/share/nginx/html/index.html \
-v /opt/admconf/sudoers:/etc/sudoers \
-v /opt/admconf/startadm.sh:/usr/bin/startadm.sh \
--restart=always \
--dns=192.168.254.251 \
-e TZ＝'Asia/Shanghai' \
-p 8100:80 \
-d centos:adm \
sh startadm.sh
