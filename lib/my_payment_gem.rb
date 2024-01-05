# frozen_string_literal: true

require_relative "my_payment_gem/version"
require 'stripe'

module MyPaymentGem
  class PaymentProcessor
    def initialize(api_key)
      Stripe.api_key = api_key
    end

    def charge(amount, currency, card_token)
      Rails.logger.info("결제 로직")
      # Stripe 결제 로직을 여기에 추가
      # 예: Stripe::Charge.create(amount: amount, currency: currency, source: card_token)
    end
  end
end