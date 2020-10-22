class AddColumnLevel5FlatImage < ActiveRecord::Migration[6.0]
  def change
    add_column :level5s, :flat_image, :string
  end
end
