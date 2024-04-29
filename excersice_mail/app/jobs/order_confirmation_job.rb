class OrderConfirmationJob < ApplicationJob
  queue_as :default

  def perform(user_email, local = 'en')
    I18n.locale = local.to_sym
    OrderMailer.order_confirmation_email(user_email).deliver_now
  end
end
