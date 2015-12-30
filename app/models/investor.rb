class Investor < ActiveRecord::Base
  has_many :investments
  has_secure_password
end
