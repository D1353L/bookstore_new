class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  belongs_to :order_status
  belongs_to :user
  belongs_to :coupon, optional: true
  belongs_to :billing_address, :class_name => 'Address', optional: true
  belongs_to :shipping_address, :class_name => 'Address', optional: true
end
