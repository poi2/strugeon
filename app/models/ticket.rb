class Ticket < ActiveRecord::Base
  belongs_to :article
  has_many :investments
end
