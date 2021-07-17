class Level0 < ApplicationRecord
  has_many :tech_components, :dependent => :destroy
  has_many :tech_intros, :dependent => :destroy
  has_many :level1s, :through => :tech_components
end
