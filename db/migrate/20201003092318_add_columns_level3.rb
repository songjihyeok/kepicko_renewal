class AddColumnsLevel3 < ActiveRecord::Migration[6.0]
  def change
    add_column :level3s, :main_title, :string
    add_column :level3s, :sub_title, :string
    add_column :level3s, :main_image, :string
    add_column :level3s, :slogan_first_row_first, :string
    add_column :level3s, :slogan_first_row_second, :string
    add_column :level3s, :slogan_second_row_first, :string
    add_column :level3s, :slogan_second_row_second, :string
    add_column :level3s, :slogan_third_row_first, :string
    add_column :level3s, :slogan_third_row_second, :string
    add_column :level3s, :slogan_description, :string
    add_column :level3s, :character_title, :string
    add_column :level3s, :characteristics, :string
    add_column :level3s, :sub_image, :string
    add_column :level3s, :skill_title, :string
    add_column :level3s, :skill_first_title, :string
    add_column :level3s, :skill_second_title, :string

    create_table :packages do |t|
      t.string :image
      t.string :title
      t.integer :level3_id

      t.timestamps
    end
    create_table :issues do |t|
      t.string :title
      t.text :description
      t.integer :level3_id

      t.timestamps
    end
    create_table :skill_first do |t|
      t.string :title
      t.string :image
      t.text :description
      t.integer :level3_id

      t.timestamps
    end
    create_table :skill_second do |t|
      t.string :title
      t.string :image
      t.text :description
      t.integer :level3_id

      t.timestamps
    end
  end
end
