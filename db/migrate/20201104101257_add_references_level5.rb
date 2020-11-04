class AddReferencesLevel5 < ActiveRecord::Migration[6.0]
  def change
   add_reference :lv5_features, :level5, index: true
   add_reference :lv5_installations, :level5, index: true
   add_reference :lv5_comparison_images, :level5, index: true
   add_reference :lv5_flatimages, :level5, index: true
  end
end
