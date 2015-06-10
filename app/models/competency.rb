class Competency < ActiveRecord::Base
  has_many :competency_notes , :class_name => "CompetencyNote", :foreign_key => "competency_id"

  validates :comp_name, :presence => true, :uniqueness => true

end
