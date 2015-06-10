class CompetencyNote < ActiveRecord::Base
  belongs_to :employee
  belongs_to :competency , :class_name => "Competency", :foreign_key => "competency_id"

  validates :employee_id, :presence => true
  validates :competency_id, :presence => true
  validates :note, :presence => true
end
