class Level2 < ApplicationRecord
  mount_uploader :main_image, ImageUploader
  has_many :systems, :dependent => :destroy
  has_many :components, :dependent => :destroy

  has_many :level3s, :through => :systems
  has_many :level1s, :through => :components

end
