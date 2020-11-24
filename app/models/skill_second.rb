class SkillSecond < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :level3
  belongs_to :level4
end
