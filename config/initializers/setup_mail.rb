#This will stop rails from reading these mail setting in production, and block production email config
if Rails.env.development?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    address:   'smtp.sendgrid.net',
    port:      '587',
    authentication: :plain,
    user_name:     ENV['SENDGRID_USERNAME'],
    password:      ENV['SENDGRID_PASSWORD'],
    domain:        'heroku.com',
    enable_starttls_auto: true
  }
end