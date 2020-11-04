class RemoveTablesLv4 < ActiveRecord::Migration[6.0]
  def change
    remove_column :level4s, :character_image
    remove_column :level4s, :composition_image
    remove_column :level4s, :perfomance_image
    remove_column :level4s, :control_image1
    remove_column :level4s, :control_image2
    remove_column :level4s, :control_image3
    remove_column :level4s, :control_image4
  end
end
