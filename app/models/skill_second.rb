class SkillSecond < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :level3
end
