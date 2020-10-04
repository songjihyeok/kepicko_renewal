class Interviewer < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :level5
end
