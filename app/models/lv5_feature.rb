class Lv5Feature < ApplicationRecord
  mount_uploader :mainimage, ImageUploader
  mount_uploader :mobileimage, ImageUploader

  belongs_to :level5
end
