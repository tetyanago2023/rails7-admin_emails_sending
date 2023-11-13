class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_user_email.subject
  #
  def new_user_email(user)
    @user = user
    admins = User.where(role: :admin)
    admins.each do |admin|
      mail(to: admin.email, subject: 'New user signup')
    end
  end
end
