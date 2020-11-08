class Level5 < ApplicationRecord
  has_many :lv5_comparison_images
  has_many :lv5_features
  has_many :lv5_flatimages
  has_many :lv5_installations
  has_one :product
  has_many :interviewers

  has_many :level4s, :through => :product

end
