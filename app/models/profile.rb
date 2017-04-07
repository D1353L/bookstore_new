class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :preferable_billing_address
  belongs_to :preferable_shipping_address
end
