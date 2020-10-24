class ChangeColumnNameLevel0 < ActiveRecord::Migration[6.0]
  def change
    rename_column :level0s, :secont_description, :second_description
  end
end
