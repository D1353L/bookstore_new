class Profile < ApplicationRecord
  has_many :credit_cards
  belongs_to :user
  belongs_to :preferable_billing_address
  belongs_to :preferable_shipping_address
end
