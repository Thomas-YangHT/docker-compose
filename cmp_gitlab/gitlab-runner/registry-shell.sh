gitlab-runner register \
  --non-interactive \
  --executor "shell" \
  --url "http://gitlab.yunwei.edu/" \
  --registration-token "gwHDYqzVVu6Spyvvc1Nu" \
  --description "shell-runner" \
  --tag-list "shell" \
  --run-untagged \
  --locked="false"
