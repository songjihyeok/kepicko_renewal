class Level4 < ApplicationRecord

  has_many :lv4_character_images, :dependent => :destroy
  has_many :lv4_composition_images, :dependent => :destroy
  has_many :lv4_perfomance_images, :dependent => :destroy
  has_many :lv4_control_images, :dependent => :destroy
  has_one :package, :dependent => :destroy
  has_many :products, :dependent => :destroy

  has_many :level5s, :through => :products
  has_many :level3s, :through => :package
  has_many :skill_firsts, :dependent => :destroy
  has_many :skill_seconds, :dependent => :destroy
end
