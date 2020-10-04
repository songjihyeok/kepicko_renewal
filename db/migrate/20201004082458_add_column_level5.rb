class AddColumnLevel5 < ActiveRecord::Migration[6.0]
  def change
    add_column :level5s, :description, :string
  end
end
