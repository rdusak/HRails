# frozen_string_literal: true

class ContactMailer < ActionMailer::Base
  default to: 'robert@example.com'

  def contact_email(name, email, message)
    @name = name
    @email = email
    @message = message

    mail(from: email, subject: "Robert's Articles Contact Form Message")
  end
end
