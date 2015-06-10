class Home < ActiveRecord::Base
  has_many :goals , :class_name => "GoalNote", :foreign_key => "goal_id"
  has_many :competencies , :class_name => "Competency", :foreign_key => "competency_id"
  has_many :meeting_notes

  belongs_to :employee , :class_name => "Employee", :foreign_key => "employee_id"

end
