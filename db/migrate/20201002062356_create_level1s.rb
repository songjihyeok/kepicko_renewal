class CreateLevel1s < ActiveRecord::Migration[6.0]
  def change
    create_table :level1s do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
