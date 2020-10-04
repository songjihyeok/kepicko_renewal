class AddColumnsToLevel2 < ActiveRecord::Migration[6.0]
  def change
    add_column :level2s, :main_title, :string
    add_column :level2s, :sub_title, :string
    add_column :level2s, :main_image, :string
  end
end
