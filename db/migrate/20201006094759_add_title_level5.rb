class AddTitleLevel5 < ActiveRecord::Migration[6.0]
  def change
    add_column :level5s, :title, :string
  end
end
