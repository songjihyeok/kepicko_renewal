class ChangeNameSkills < ActiveRecord::Migration[6.0]
  def change
    rename_table :skill_first, :skill_firsts
    rename_table :skill_second, :skill_seconds
  end
end
