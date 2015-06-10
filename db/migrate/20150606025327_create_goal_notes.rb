class CreateGoalNotes < ActiveRecord::Migration
  def change
    create_table :goal_notes do |t|
      t.integer :employee_id
      t.integer :goal_id
      t.text :note

      t.timestamps

    end
  end
end
