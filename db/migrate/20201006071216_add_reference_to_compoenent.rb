class AddReferenceToCompoenent < ActiveRecord::Migration[6.0]
  def change
    add_reference :components, :level1
  end
end
