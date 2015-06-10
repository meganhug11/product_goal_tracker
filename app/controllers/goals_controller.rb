class GoalsController < ApplicationController
  def index
    if current_employee != nil
      @goals = Goal.where ({ :employee_id => current_employee.id})
    else
      @goals = Goal.all
    end
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new
    @goal.employee_id = params[:employee_id]
    @goal.goal_description = params[:goal_description]
    @goal.goal_name = params[:goal_name]

    if @goal.save
      redirect_to "/goals", :notice => "Goal created successfully."
    else
      render 'new'
    end
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def update
    @goal = Goal.find(params[:id])

    @goal.employee_id = params[:employee_id]
    @goal.goal_description = params[:goal_description]
    @goal.goal_name = params[:goal_name]

    if @goal.save
      redirect_to "/goals", :notice => "Goal updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @goal = Goal.find(params[:id])

    @goal.destroy

    redirect_to "/goals", :notice => "Goal deleted."
  end
end
