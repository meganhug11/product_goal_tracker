class CompetencyNotesController < ApplicationController
  def index
    if current_employee != nil
      @competency_notes = CompetencyNote.where ({ :employee_id => current_employee.id })
    else
      @competency_notes = CompetencyNote.all
    end
  end

  def show
    @competency_note = CompetencyNote.find(params[:id])
  end

  def new
    @competency_note = CompetencyNote.new
  end

  def create
    @competency_note = CompetencyNote.new
    @competency_note.employee_id = params[:employee_id]
    @competency_note.competency_id = params[:competency_id]
    @competency_note.note = params[:note]

    if @competency_note.save
      redirect_to "/competencies/#{@competency_note.competency_id}", :notice => "Competency note created successfully."
    else
      redirect_to "/competencies/#{@competency_note.competency_id}", :alert => "Note can't be blank."
    end
  end

  def edit
    @competency_note = CompetencyNote.find(params[:id])
  end

  def update
    @competency_note = CompetencyNote.find(params[:id])

    @competency_note.employee_id = params[:employee_id]
    @competency_note.competency_id = params[:competency_id]
    @competency_note.note = params[:note]

    if @competency_note.save
      redirect_to "/competencies/#{@competency_note.competency_id}", :notice => "Competency note updated successfully."
    else
      redirect_to "/competencies/#{@competency_note.competency_id}", :alert => "Note can't be blank."
    end
  end

  def destroy
    @competency_note = CompetencyNote.find(params[:id])

    @competency_note.destroy

    redirect_to "/competencies/#{@competency_note.competency_id}", :notice => "Competency note deleted."
  end
end
