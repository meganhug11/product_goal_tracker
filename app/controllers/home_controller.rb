class HomeController < ApplicationController
  def show
    if current_employee != nil
      @goals = Goal.where ({ :employee_id => current_employee.id})
    else
      @goals = Goal.all
    end

    @competencies = Competency.all

    if current_employee != nil
      @meeting_notes = MeetingNote.where ({ :employee_id => current_employee.id })
    else
      @meeting_notes = MeetingNote.all
    end
  end

end
