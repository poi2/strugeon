class Innovator < ActiveRecord::Base
  has_and_belongs_to_many :articles
  has_secure_password
end
