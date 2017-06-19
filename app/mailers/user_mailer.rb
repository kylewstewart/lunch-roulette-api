class UserMailer < ApplicationMailer

  def send_authorization_code(user)
    @user = user
    mail(to: @user.email, Subject: "Your Flatiron Lunch Roulette Review Authorization Code")
  end
end
