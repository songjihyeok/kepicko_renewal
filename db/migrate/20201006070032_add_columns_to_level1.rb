class AddColumnsToLevel1 < ActiveRecord::Migration[6.0]
  def change
    add_column :level1s, :image, :string
    create_table :components do |t|
      t.string :title
      t.string :image
      t.integer :level2_id

      t.timestamps
    end
  end
end
