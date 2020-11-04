class AddTableLevel4s < ActiveRecord::Migration[6.0]
  def change
    create_table :lv4_character_images do |t|
      t.string :mainimage
      t.string :mobileimage
      t.references :level4
      t.timestamps
    end
    create_table :lv4_composition_images do |t|
      t.string :mainimage
      t.string :mobileimage
      t.references :level4
      t.timestamps
    end
    create_table :lv4_perfomance_images do |t|
      t.string :mainimage
      t.string :mobileimage
      t.references :level4
      t.timestamps
    end
    create_table :lv4_control_images do |t|
      t.string :mainimage
      t.string :mobileimage
      t.references :level4
      t.timestamps
    end

  end
end
