class Level0 < ApplicationRecord
  has_many :tech_components
  has_many :tech_intros
  has_many :level1s, :through => :tech_intros
end
