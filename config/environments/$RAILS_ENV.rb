config.action_mailer.delivery_method = :smtp
config.action_mailer.perform_deliveries = true
config.action_mailer.raise_delivery_errors = true
config.action_mailer.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  user_name:            'lunchroulette1010@gmail.com',
  password:             'Flatiron0403',
  authentication:       'plain',
  enable_starttls_auto: true  }
