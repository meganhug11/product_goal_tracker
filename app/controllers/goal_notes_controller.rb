class GoalNotesController < ApplicationController
  def index
    if current_employee != nil
      @goal_notes = GoalNote.where ({ :employee_id => current_employee.id })
    else
      @goal_notes = GoalNote.all
    end
  end

  def show
    @goal_note = GoalNote.find(params[:id])
  end

  def new
      @goal_note = GoalNote.new
  end

  def create
    @goal_note = GoalNote.new
    @goal_note.employee_id = params[:employee_id]
    @goal_note.goal_id = params[:goal_id]
    @goal_note.note = params[:note]

    if @goal_note.save
      redirect_to "/goals/#{@goal_note.goal_id}", :notice => "Goal note created successfully."
    else
      redirect_to "/goals/#{@goal_note.goal_id}", :alert => "Note can't be blank."
    end
  end

  def edit
    @goal_note = GoalNote.find(params[:id])
  end

  def update
    @goal_note = GoalNote.find(params[:id])

    @goal_note.employee_id = params[:employee_id]
    @goal_note.goal_id = params[:goal_id]
    @goal_note.note = params[:note]

    if @goal_note.save
      redirect_to "/goals/#{@goal_note.goal_id}", :notice => "Goal note updated successfully."
    else
      redirect_to "/goals/#{@goal_note.goal_id}", :alert => "Note can't be blank."
    end
  end

  def destroy
    @goal_note = GoalNote.find(params[:id])

    @goal_note.destroy

    redirect_to "/goals/#{@goal_note.goal_id}", :notice => "Goal note deleted."
  end
end
