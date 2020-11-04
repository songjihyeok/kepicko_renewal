class AddImageTablse < ActiveRecord::Migration[6.0]
  def change
    create_table :flatimages do |t|
      t.string :mainimage
      t.string :mobileimage
      t.timestamps
    end
    create_table :installation do |t|
      t.string :mainimage
      t.string :mobileimage
      t.timestamps
    end
    create_table :feature do |t|
      t.string :mainimage
      t.string :mobileimage
      t.timestamps
    end
    create_table :comparison_image do |t|
      t.string :mainimage
      t.string :mobileimage
      t.timestamps
    end

    remove_column :level5s, :installation_image
    remove_column :level5s, :feature_image1
    remove_column :level5s, :feature_image2
    remove_column :level5s, :feature_image3
    remove_column :level5s, :comparison_image

  end
end
