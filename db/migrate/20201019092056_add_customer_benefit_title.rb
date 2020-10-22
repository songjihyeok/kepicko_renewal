class AddCustomerBenefitTitle < ActiveRecord::Migration[6.0]
  def change
    add_column :level5s, :customer_benefit_title, :string
    add_column :level5s, :customer_benefit_detail, :string
  end
end
