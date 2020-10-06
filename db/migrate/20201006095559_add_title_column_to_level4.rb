class AddTitleColumnToLevel4 < ActiveRecord::Migration[6.0]
  def change
    add_column :level4s, :title, :string
  end
end
