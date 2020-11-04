class ChangeColumnNames < ActiveRecord::Migration[6.0]
  def change
    rename_table :feature, :lv5_features
    rename_table :installation, :lv5_installations
    rename_table :comparison_image, :lv5_comparison_images
    rename_table :flatimages, :lv5_flatimages
  end
end
