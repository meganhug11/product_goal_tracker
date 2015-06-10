class CompetenciesController < ApplicationController
  def index
    @competencies = Competency.all
  end

  def show
    @competency = Competency.find(params[:id])
  end

  def new
    @competency = Competency.new
  end

  def create
    @competency = Competency.new
    @competency.comp_name = params[:comp_name]
    @competency.comp_description = params[:comp_description]

    if @competency.save
      redirect_to "/competencies", :notice => "Competency created successfully."
    else
      render 'new'
    end
  end

  def edit
    @competency = Competency.find(params[:id])
  end

  def update
    @competency = Competency.find(params[:id])

    @competency.comp_name = params[:comp_name]
    @competency.comp_description = params[:comp_description]

    if @competency.save
      redirect_to "/competencies", :notice => "Competency updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @competency = Competency.find(params[:id])

    @competency.destroy

    redirect_to "/competencies", :notice => "Competency deleted."
  end
end
