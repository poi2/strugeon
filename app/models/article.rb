class Article < ActiveRecord::Base
  has_and_belongs_to_many :innovators
  has_many :tickets
end