class TechIntro < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :level0
end
