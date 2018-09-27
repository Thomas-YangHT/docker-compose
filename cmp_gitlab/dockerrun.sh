docker run -d \
  --hostname gitlab.yunwei.edu \
  -p 1443:443 -p 1180:80 -p 122:22 \
  --env GITLAB_OMNIBUS_CONFIG="external_url 'http://gitlab.yunwei.edu/'; gitlab_rails['lfs_enabled'] = true;" \
  --name gitlab \
  --restart always \
  -v /opt/cmp_gitlab/gitlab/config:/etc/gitlab:Z \
  -v /opt/cmp_gitlab/gitlab/logs:/var/log/gitlab:Z \
  -v /opt/cmp_gitlab/gitlab/data:/var/opt/gitlab:Z \
192.168.100.222:5000/gitlab/gitlab-ce:latest
