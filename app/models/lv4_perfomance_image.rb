class Lv4PerfomanceImage < ApplicationRecord
  mount_uploader :mainimage, ImageUploader
  mount_uploader :mobileimage, ImageUploader

  belongs_to :level4
end
