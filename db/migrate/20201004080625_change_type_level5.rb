class ChangeTypeLevel5 < ActiveRecord::Migration[6.0]
  def change
    add_column :level5s, :installation_small_title, :string
    remove_column :level5s, :title, :string
    remove_column :level5s, :description, :text
    change_column :level5s, :interview_detail, :text

  end
end
