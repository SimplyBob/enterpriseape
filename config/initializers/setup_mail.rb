ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address                      => 'smtp.sendgrid.net',
  :port                         => '587',
  :authentication               => 'plain',
  :user_name                    => 'app32253671@heroku.com',
  :password                     => 'y1kw4es6',
  :domain                       => 'heroku.com',
  :enable_starttls_auto         => true
}
