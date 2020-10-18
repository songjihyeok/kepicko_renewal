class AddLevel1Name < ActiveRecord::Migration[6.0]
  def change
    add_column :level1s, :name, :string
    add_column :level1s, :bold_name, :string
    change_column :level5s, :date, :text
  end
end
