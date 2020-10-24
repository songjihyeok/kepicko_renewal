class AddTableProduct < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :sub_title
      t.string :image
      t.integer :level4_id
      t.integer :level5_id

      t.timestamps
    end
    add_column :level4s, :intro_title_small, :string
  end
end
