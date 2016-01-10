class Cart < ActiveRecord::Base
  has_one :user
  has_one :payment
  has_many :orders
end
