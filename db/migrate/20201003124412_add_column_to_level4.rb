class AddColumnToLevel4 < ActiveRecord::Migration[6.0]
  def change
    add_column :level4s, :main_title, :string
    add_column :level4s, :sub_title, :string
    add_column :level4s, :character_title, :string
    add_column :level4s, :character_image, :string
    add_column :level4s, :intro_title, :string
    add_column :level4s, :introduction, :text
    add_column :level4s, :composition, :string
    add_column :level4s, :composition_image, :string
    add_column :level4s, :perfomance_big, :string
    add_column :level4s, :perfomance_small, :string
    add_column :level4s, :perfomance_image, :string
    add_column :level4s, :control_big, :string
    add_column :level4s, :control_small, :string
    add_column :level4s, :control_image1, :string
    add_column :level4s, :control_image2, :string
    add_column :level4s, :control_image3, :string
    add_column :level4s, :control_image4, :string
    remove_column :level4s, :description
    remove_column :level4s, :title
  end
end
