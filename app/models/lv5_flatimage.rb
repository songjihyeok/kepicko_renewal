class Lv5Flatimage < ApplicationRecord
  mount_uploader :mainimage, ImageUploader
  mount_uploader :mobileimage, ImageUploader

  belongs_to :level5
end
