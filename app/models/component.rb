class Component < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :level2
  belongs_to :level1
end
