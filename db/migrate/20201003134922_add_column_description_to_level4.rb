class AddColumnDescriptionToLevel4 < ActiveRecord::Migration[6.0]
  def change
    add_column :level4s, :description, :string
  end
end
