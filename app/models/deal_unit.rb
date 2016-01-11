class DealUnit < ActiveRecord::Base
  belongs_to :deal
  has_one :inventory, dependent: :destroy
  has_many :orders
  has_many :carts, through: :orders
end
