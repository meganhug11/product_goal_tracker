class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :employee_id
      t.text :goal_description
      t.string :goal_name

      t.timestamps

    end
  end
end
