class Employee < ActiveRecord::Base
  has_many :meeting_notes
  has_many :goal_notes , :class_name => "GoalNote", :foreign_key => "employee_id"
  has_many :competency_notes , :class_name => "CompetencyNote", :foreign_key => "employee_id"
  has_many :goals , :class_name => "Goal", :foreign_key => "employee_id"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
