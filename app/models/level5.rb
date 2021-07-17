class Level5 < ApplicationRecord
  has_many :lv5_comparison_images, :dependent => :destroy
  has_many :lv5_features, :dependent => :destroy
  has_many :lv5_flatimages, :dependent => :destroy
  has_many :lv5_installations, :dependent => :destroy
  has_one :product, :dependent => :destroy
  has_many :interviewers, :dependent => :destroy

  has_many :level4s, :through => :product

end
