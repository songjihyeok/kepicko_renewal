class CreateLevel5s < ActiveRecord::Migration[6.0]
  def change
    create_table :level5s do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
