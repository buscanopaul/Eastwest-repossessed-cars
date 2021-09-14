class Type < ApplicationRecord
  include ImageUploader::Attachment(:image)

  belongs_to :user
  has_many :cars
end
