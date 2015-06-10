class MeetingNote < ActiveRecord::Base
  belongs_to :employee

  validates :employee_id, :presence => true
  validates :note, :presence => true
end
