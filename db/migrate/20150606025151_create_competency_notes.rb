class CreateCompetencyNotes < ActiveRecord::Migration
  def change
    create_table :competency_notes do |t|
      t.integer :employee_id
      t.integer :competency_id
      t.text :note

      t.timestamps

    end
  end
end
