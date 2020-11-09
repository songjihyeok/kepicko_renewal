class RemoveFlatImage < ActiveRecord::Migration[6.0]
  def change
    remove_column :level5s, :flat_image
  end
end
