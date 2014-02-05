class ObjectivesController < ApplicationController
  before_action :set_objective, only: [:show, :edit, :update, :destroy]

  def index
    @objectives = Objective.all
    @exams = Exam.all
  end

  def show
  end

  def new
    @objective = Objective.new
    @exams = Exam.all
  end

  def edit
  end

  def create
    @objective = Objective.new(objective_params)

    respond_to do |format|
      if @objective.save
        format.html { redirect_to @objective, notice: 'Objective was successfully created.' }
        format.json { render action: 'show', status: :created, location: @objective }
      else
        format.html { render action: 'new' }
        format.json { render json: @objective.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @objective.update(objective_params)
        format.html { redirect_to @objective, notice: 'Objective was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @objective.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @objective.destroy
    respond_to do |format|
      format.html { redirect_to objectives_url }
      format.json { head :no_content }
    end
  end

  private
    def set_objective
      @objective = Objective.find(params[:id])
    end

    def objective_params
      params.require(:objective).permit(:objective, :stem_id, :exam_id, :strength_id)
    end
end
