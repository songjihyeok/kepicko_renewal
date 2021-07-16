class AddButtomColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :level0s, :button, :string
    add_column :level1s, :button, :string
    add_column :systems, :button, :string
    add_column :level3s, :first_button, :string
    add_column :level3s, :second_button, :string
    add_column :level3s, :first_package_title, :string
    add_column :level3s, :bold_package_title, :string
    add_column :level3s, :second_package_title, :string
    add_column :skill_firsts, :button, :string
    # add_column :skill_firsts, :link, :string
    add_column :skill_seconds, :button, :string
    # add_column :skill_seconds, :link, :string
    add_column :level4s, :first_button, :string
    add_column :level4s, :second_button, :string
    add_column :products, :button, :string
    add_column :level5s, :first_button, :string
    add_column :level5s, :second_button, :string
  end
end
