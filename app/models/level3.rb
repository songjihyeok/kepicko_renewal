class Level3 < ApplicationRecord
  has_many :issues, :dependent => :destroy
  has_many :skill_firsts, :dependent => :destroy
  has_many :skill_seconds, :dependent => :destroy
  has_many :packages, :dependent => :destroy
  has_one :system, :dependent => :destroy
  has_many :lv3_characteristic_images, :dependent => :destroy
  has_many :lv3_main_images, :dependent => :destroy
  has_many :lv3_sub_images, :dependent => :destroy

  has_many :level4s, :through => :packages
  has_many :level2s, :through => :system
end
