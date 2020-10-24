class CreateSystems < ActiveRecord::Migration[6.0]
  def change
    create_table :systems do |t|
      t.string :title
      t.string :sub_title
      t.string :main_image
      t.text :description
      t.integer :level2_id

      t.timestamps
    end
  end
end
