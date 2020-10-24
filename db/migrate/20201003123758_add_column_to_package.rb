class AddColumnToPackage < ActiveRecord::Migration[6.0]
  def change
     add_reference :packages, :level4, index: true
  end
end
