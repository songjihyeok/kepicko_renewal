class DeletePersonAddTableInterviewer < ActiveRecord::Migration[6.0]
  def change
    drop_table :person
    create_table :interviewer do |t|
      t.string :image
      t.string :position
      t.string :name
      t.integer :level5_id

      t.timestamps
    end
  end
end
