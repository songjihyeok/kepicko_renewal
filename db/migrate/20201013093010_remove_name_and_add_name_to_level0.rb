class RemoveNameAndAddNameToLevel0 < ActiveRecord::Migration[6.0]
  def change
    remove_column :level1s, :name, :string
    remove_column :level1s, :bold_name, :string
    add_column :level0s, :name, :string
    add_column :level0s, :bold_name, :string
  end
end
