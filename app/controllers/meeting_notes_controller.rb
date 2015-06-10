class MeetingNotesController < ApplicationController
  def index
    if current_employee != nil
      @meeting_notes = MeetingNote.where ({ :employee_id => current_employee.id })
    else
      @meeting_notes = MeetingNote.all
    end
  end

  def show
    @meeting_note = MeetingNote.find(params[:id])
  end

  def new
    @meeting_note = MeetingNote.new
  end

  def create
    @meeting_note = MeetingNote.new
    @meeting_note.employee_id = params[:employee_id]
    @meeting_note.note = params[:note]

    if @meeting_note.save
      redirect_to "/meeting_notes", :notice => "Meeting note created successfully."
    else
      render 'new'
    end
  end

  def edit
    @meeting_note = MeetingNote.find(params[:id])
  end

  def update
    @meeting_note = MeetingNote.find(params[:id])

    @meeting_note.employee_id = params[:employee_id]
    @meeting_note.note = params[:note]

    if @meeting_note.save
      redirect_to "/meeting_notes", :notice => "Meeting note updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @meeting_note = MeetingNote.find(params[:id])

    @meeting_note.destroy

    redirect_to "/meeting_notes", :notice => "Meeting note deleted."
  end
end
