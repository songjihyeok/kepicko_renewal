class AddColumnsLevel0 < ActiveRecord::Migration[6.0]
  def change
    add_column :level0s, :first_title, :string
    add_column :level0s, :second_title, :string
    add_column :level0s, :third_title, :string
    add_column :level0s, :first_description, :text
    add_column :level0s, :secont_description, :text
    add_column :level0s, :third_description, :text
    remove_column :level0s, :description

    create_table :tech_intros do |t|
      t.string :title
      t.string :image
      t.string :sub_title
      t.text :description
      t.integer :level1_id
      t.integer :level0_id

      t.timestamps
    end

    create_table :tech_components do |t|
      t.string :title
      t.string :image
      t.integer :level1_id
      t.integer :level0_id

      t.timestamps
    end
  end
end
