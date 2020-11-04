class Level3 < ApplicationRecord
  has_many :issues
  has_many :skill_firsts
  has_many :skill_seconds
  has_many :packages
  has_one :system
  has_many :lv3_characteristic_images
  has_many :lv3_main_images
  has_many :lv3_sub_images
end
