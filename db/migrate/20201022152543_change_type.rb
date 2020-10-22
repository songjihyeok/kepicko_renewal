class ChangeType < ActiveRecord::Migration[6.0]
  def change
    change_column :level5s, :customer_benefit_detail, :text
  end
end
