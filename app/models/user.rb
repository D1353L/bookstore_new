class User < ApplicationRecord
  has_many :orders
  has_many :reviews
  has_one :profile
end
