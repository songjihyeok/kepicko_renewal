class TechComponent < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :level1
  belongs_to :level0
end
