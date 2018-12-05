docker run --name awstats \
-v /opt/nginxlog:/var/log/nginx \
-v /opt/nginxawstats:/etc/nginx \
-v /opt/cmp_awstats/awstats:/etc/awstats \
-v /opt/cmp_awstats/awstatsdata:/var/lib/awstats \
-v /opt/cmp_awstats/startawstats.sh:/startawstats.sh \
-p 8099:80 \
-p 8999:8999 \
--restart=always \
--privileged \
-d 192.168.254.211:5000/centos.cgi \
sh startawstats.sh
