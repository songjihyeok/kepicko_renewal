class Level3 < ApplicationRecord
  mount_uploader :sub_image, ImageUploader
  mount_uploader :main_image, ImageUploader
  mount_uploader :characteristics, ImageUploader
  has_many :issues
  has_many :skill_firsts
  has_many :skill_seconds
  has_many :packages
end
