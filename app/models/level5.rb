class Level5 < ApplicationRecord
  mount_uploader :comparison_image, ImageUploader
  mount_uploader :installation_image, ImageUploader
  mount_uploader :feature_image1 , ImageUploader
  mount_uploader :feature_image2 , ImageUploader
  mount_uploader :feature_image3 , ImageUploader

  has_one :product
  has_many :interviewers
end
