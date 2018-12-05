# This file is managed by gitlab-ctl. Manual changes will be
# erased! To change the contents below, edit /etc/gitlab/gitlab.rb
# and run `sudo gitlab-ctl reconfigure`.

if Rails.env.production?
  Gitlab::Application.config.action_mailer.delivery_method = :smtp

  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    address: "192.168.254.123",
    port: 25,
    
    
    
    
    
    
    
    
    ca_file: "/opt/gitlab/embedded/ssl/certs/cacert.pem",
  }
end
