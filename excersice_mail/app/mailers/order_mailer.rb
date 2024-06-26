class OrderMailer < ApplicationMailer
  def order_confirmation_email(user_email)
    @user_email = user_email
    mail(to: user_email, subject: 'Order Confirmation')
  end
end
