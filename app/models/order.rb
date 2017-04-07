class Order < ApplicationRecord
  belongs_to :order_status
  belongs_to :user
  belongs_to :coupon
  belongs_to :billing_address
  belongs_to :shipping_address
end
