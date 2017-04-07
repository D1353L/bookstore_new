class Profile < ApplicationRecord
  has_many :credit_cards, dependent: :destroy
  belongs_to :user
  belongs_to :billing_address, :class_name => 'Address', optional: true
  belongs_to :shipping_address, :class_name => 'Address', optional: true
end
