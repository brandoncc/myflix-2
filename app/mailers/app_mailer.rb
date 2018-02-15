class AppMailer < ActionMailer::Base
  def send_welcome_email(user)
    @user = user
    mail from: ENV['GMAIL_USERNAME'], to: @user.email, subject: 'Welcome to MyFlix!'
  end

  def send_forgot_password(user)
    @user = user
    mail to: user.email, from: "info@myflix.com", subject: "Please reset your password"
  end
end