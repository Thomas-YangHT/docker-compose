sed -i "s/ZBX_HOSTNAME=.*/ZBX_HOSTNAME=`hostname`/g" .env
docker-compose up -d
