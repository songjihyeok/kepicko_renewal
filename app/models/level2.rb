class Level2 < ApplicationRecord
  mount_uploader :main_image, ImageUploader
  has_many :systems
  has_many :components

  has_many :level3s, :through => :systems
  has_many :level1s, :through => :components

end
