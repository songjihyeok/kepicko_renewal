class AddColumnsLevel5 < ActiveRecord::Migration[6.0]
  def change
    add_column :level5s, :main_title, :string
    add_column :level5s, :sub_title, :string
    add_column :level5s, :main_image, :string
    add_column :level5s, :awards, :text
    add_column :level5s, :main_description, :text
    add_column :level5s, :date, :string
    add_column :level5s, :installation, :string
    add_column :level5s, :installation_image, :string
    add_column :level5s, :feature, :string
    add_column :level5s, :feature_small_title, :string
    add_column :level5s, :feature_image1, :string
    add_column :level5s, :feature_image2, :string
    add_column :level5s, :feature_image3, :string
    add_column :level5s, :performance_title, :string
    add_column :level5s, :performance_detail, :text
    add_column :level5s, :comparison_title, :string
    add_column :level5s, :comparison_image, :string
    add_column :level5s, :interview_title, :string
    add_column :level5s, :interview_main_title, :string
    add_column :level5s, :interview_detail, :string
    add_column :level5s, :youtube_url, :string

    create_table :person do |t|
      t.string :image
      t.string :position
      t.string :name
      t.integer :level5_id

      t.timestamps
    end

  end
end
