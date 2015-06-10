class CreateMeetingNotes < ActiveRecord::Migration
  def change
    create_table :meeting_notes do |t|
      t.integer :employee_id
      t.text :note

      t.timestamps

    end
  end
end
