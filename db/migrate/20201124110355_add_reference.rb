class AddReference < ActiveRecord::Migration[6.0]
  def change
        remove_reference :skill_firsts, :link
        remove_reference :skill_seconds, :link
        # add_reference :skill_firsts, :level4, index: true
        # add_reference :skill_seconds, :level4, index: true
  end

end
