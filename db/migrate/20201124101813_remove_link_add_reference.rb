class RemoveLinkAddReference < ActiveRecord::Migration[6.0]
  def change
    remove_column :skill_firsts, :link
    remove_column :skill_seconds, :link
    add_reference :skill_firsts, :level5, index: true
    add_reference :skill_seconds, :level5, index: true
  end
end
