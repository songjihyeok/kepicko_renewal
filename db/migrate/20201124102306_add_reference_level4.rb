class AddReferenceLevel4 < ActiveRecord::Migration[6.0]
  def change
    remove_reference :skill_firsts, :level5
    remove_reference :skill_seconds, :level5
    add_reference :skill_firsts, :level4, index: true
    add_reference :skill_seconds, :level4, index: true
  end
end
