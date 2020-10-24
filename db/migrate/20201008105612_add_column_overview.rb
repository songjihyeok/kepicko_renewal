class AddColumnOverview < ActiveRecord::Migration[6.0]
  def change
    add_column :level3s, :overview, :string
  end
end
