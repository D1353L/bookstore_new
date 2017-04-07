class Order < ApplicationRecord
  has_many :order_items
  belongs_to :order_status
  belongs_to :user
  belongs_to :coupon
  belongs_to :billing_address, :class_name => 'Address'
  belongs_to :shipping_address, :class_name => 'Address'
end
