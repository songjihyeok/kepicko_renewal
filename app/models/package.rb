class Package < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :level4
  belongs_to :level3
end
