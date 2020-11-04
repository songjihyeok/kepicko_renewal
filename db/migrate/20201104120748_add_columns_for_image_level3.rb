class AddColumnsForImageLevel3 < ActiveRecord::Migration[6.0]
  def change
    create_table :lv3_main_images do |t|
      t.string :mainimage
      t.string :mobileimage
      t.references :level3
      t.timestamps
    end
    create_table :lv3_characteristic_images do |t|
      t.string :mainimage
      t.string :mobileimage
      t.references :level3
      t.timestamps
    end
    create_table :lv3_sub_images do |t|
      t.string :mainimage
      t.string :mobileimage
      t.references :level3
      t.timestamps
    end

    remove_column :level3s, :main_image
    remove_column :level3s, :sub_image
    remove_column :level3s, :characteristics
    add_column :level3s, :sub_description, :string
  end
end
