class AddColumnLevel5MobileMainImage < ActiveRecord::Migration[6.0]
  def change
    add_column :level5s, :mobile_main_image, :string
  end
end
