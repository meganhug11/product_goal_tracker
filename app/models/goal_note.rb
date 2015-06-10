class GoalNote < ActiveRecord::Base
  belongs_to :employee , :class_name => "Employee", :foreign_key => "employee_id"
  belongs_to :goal , :class_name => "Goal", :foreign_key => "goal_id"

  validates :employee_id, :presence => true
  validates :goal_id, :presence => true
  validates :note, :presence => true
end
