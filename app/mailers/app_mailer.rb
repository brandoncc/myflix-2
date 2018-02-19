class AppMailer < ActionMailer::Base
  def send_welcome_email(user)
    @user = user
    mail from: "info@myflix.com", to: send_to(@user.email), subject: 'Welcome to MyFlix!'
  end

  def send_forgot_password(user)
    @user = user
    mail to: send_to(user.email), from: "info@myflix.com", subject: "Please reset your password"
  end

  def send_invitation_email(invitation)
    @invitation = invitation
    mail to: send_to(@invitation.recipient_email), from: "info@myflix.com", subject: "Invitation to join MyFlix"
  end

  def send_to(user)
    Rails.env.staging? ? ENV['GMAIL_USERNAME'] : user
  end
end
