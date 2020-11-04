class Level4 < ApplicationRecord

  has_many :lv4_character_images
  has_many :lv4_composition_images
  has_many :lv4_perfomance_images
  has_many :lv4_control_images
  has_one :package
  has_many :products
end
