class ChangeName < ActiveRecord::Migration[6.0]
  def change
    rename_table :interviewer, :interviewers
  end
end
