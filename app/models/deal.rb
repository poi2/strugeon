class Deal < ActiveRecord::Base
  has_many :deal_units, dependent: :destroy
  has_many :orders, through: :deal_units
end
