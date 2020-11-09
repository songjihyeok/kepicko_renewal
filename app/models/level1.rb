class Level1 < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :components
  has_many :level2s, :through => :components
end
