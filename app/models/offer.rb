class Offer < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :car
  belongs_to :brand, optional: true
end
