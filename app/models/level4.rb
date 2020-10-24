class Level4 < ApplicationRecord
  mount_uploader :character_image, ImageUploader
  mount_uploader :composition_image, ImageUploader
  mount_uploader :perfomance_image, ImageUploader
  mount_uploader :control_image1, ImageUploader
  mount_uploader :control_image2, ImageUploader
  mount_uploader :control_image3, ImageUploader
  mount_uploader :control_image4, ImageUploader

  has_one :package
  has_many :products
end
