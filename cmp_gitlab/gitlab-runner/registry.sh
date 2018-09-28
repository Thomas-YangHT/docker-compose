docker run --rm -t -i -v /opt/gitlab-runner/config:/etc/gitlab-runner --name gitlab-runner2 gitlab/gitlab-runner register \
  --non-interactive \
  --executor "docker" \
  --url "http://gitlab.yunwei.edu/" \
  --registration-token "gwHDYqzVVu6Spyvvc1Nu" \
  --description "docker-runner" \
  --tag-list "docker,aws" \
  --run-untagged \
  --docker-image "docker:stable" \
  --docker-privileged \
  --locked="false"
