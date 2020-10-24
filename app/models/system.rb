class System < ApplicationRecord
  mount_uploader :main_image, ImageUploader
  belongs_to :level2
  belongs_to :level3
end
