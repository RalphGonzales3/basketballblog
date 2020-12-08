class ApplicationMailer < ActionMailer::Base
  default to: "test@blog.com", from: "blog@test.com"
  layout 'mailer'
end
