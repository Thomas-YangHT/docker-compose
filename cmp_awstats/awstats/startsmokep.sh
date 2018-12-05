/usr/sbin/smokeping --logfile=/var/log/smokeping.log 2>&1 &
/usr/sbin/nginx
nohup /usr/bin/spawn-fcgi -a 0.0.0.0 -p 9000 -u nginx -g nginx -f /usr/bin/php-cgi -C 10
while [[ true ]]; do 
    sleep 1 
done 
