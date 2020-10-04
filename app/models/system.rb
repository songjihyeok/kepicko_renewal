class System < ApplicationRecord
  mount_uploader :main_image, ImageUploader
  belongs_to :level2
end
