class AddLevel1sRemoveComments < ActiveRecord::Migration[6.0]
  def change
    drop_table :active_admin_comments
    add_column :level1s, :main_description, :text
  end
end
