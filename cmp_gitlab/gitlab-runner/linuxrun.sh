wget -O /usr/local/bin/gitlab-runner https://raw.githubusercontent.com/Thomas-YangHT/docker-compose/master/cmp_gitlab/gitlab-runner-linux-amd64
chmod +x /usr/local/bin/gitlab-runner
# curl -sSL https://get.docker.com/| sh
useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash
gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runnersudo gitlab-runner start
usermod -aG docker gitlab-runner
sudo -u gitlab-runner -H docker info
gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner
gitlab-runner start
