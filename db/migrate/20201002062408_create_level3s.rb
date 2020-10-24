class CreateLevel3s < ActiveRecord::Migration[6.0]
  def change
    create_table :level3s do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
