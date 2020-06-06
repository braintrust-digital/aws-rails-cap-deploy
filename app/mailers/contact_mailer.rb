class ContactMailer < ApplicationMailer
  #FIXME email you want contact form to send emails to
  default to: "email-address@example.com" # use the verified email from AWS SES console
  #FIXME email to recieve contact emails are from
  default from: "no-reply@aws-rails.com"

  def home_form(name, email, message)
    @name = name
    @email = email
    @message = message

    mail subject: 'Contact Form'
  end
end
