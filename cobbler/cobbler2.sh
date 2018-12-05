docker exec -it cobbler htdigest /etc/cobbler/users.digest "Cobbler" cobbler
docker exec cobbler cobbler import --name=CentOS-7 --path=/repo/ 
