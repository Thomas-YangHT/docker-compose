docker run --net=host --privileged=true --name keepalived \
-v /opt/keepalived.1/keepalived.conf:/etc/keepalived/keepalived.conf \
-v /opt/keepalived.1/keep.sh:/etc/keepalived/keep.sh \
-v /opt/keepalived.1/chk_nginx.sh:/etc/keepalived/chk_nginx.sh \
-d 99cloud/centos-source-keepalived:4.0.2.1 bash /etc/keepalived/keep.sh
