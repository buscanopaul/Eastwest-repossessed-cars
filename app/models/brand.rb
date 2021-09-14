class Brand < ApplicationRecord
  include ImageUploader::Attachment(:image)

  belongs_to :user
  has_many :cars
  has_many :offers
end
