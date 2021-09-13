class Car < ApplicationRecord
  belongs_to :user
  belongs_to :brand
  belongs_to :type
  has_many :offers
end
