class Goal < ActiveRecord::Base
  has_many :goal_notes , :class_name => "GoalNote", :foreign_key => "goal_id"
  belongs_to :employee , :class_name => "Employee", :foreign_key => "employee_id"

  validates :employee_id, :presence => true
  validates :goal_name, :presence => true, :uniqueness => true
end
