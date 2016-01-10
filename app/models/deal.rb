class Deal < ActiveRecord::Base
  belongs_to :front_runner
  has_many :deal_units, dependent: :destroy
  has_many :orders, through: :deal_units
end
