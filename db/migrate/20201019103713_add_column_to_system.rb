class AddColumnToSystem < ActiveRecord::Migration[6.0]
  def change
    add_reference :systems, :level3
  end
end
