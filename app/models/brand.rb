class Brand < ApplicationRecord
  belongs_to :user
  has_many :cars
  has_many :offers
end
