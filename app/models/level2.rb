class Level2 < ApplicationRecord
  mount_uploader :main_image, ImageUploader
  has_many :systems
  has_many :components
end
