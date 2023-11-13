# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/new_user_email
  def new_user_email
    user = User.new(email: "user@test.com", password: "password", password_confirmation: "password")
    UserMailer.new_user_email(user)
  end

end
