class QuestionStemsController < ApplicationController
  before_action :set_question_stem, only: [:show, :edit, :update, :destroy]

  # GET /question_stems
  # GET /question_stems.json
  def index
    @question_stems = QuestionStem.all
  end

  # GET /question_stems/1
  # GET /question_stems/1.json
  def show
  end

  # GET /question_stems/new
  def new
    @question_stem = QuestionStem.new
  end

  # GET /question_stems/1/edit
  def edit
  end

  # POST /question_stems
  # POST /question_stems.json
  def create
    @question_stem = QuestionStem.new(question_stem_params)

    respond_to do |format|
      if @question_stem.save
        format.html { redirect_to @question_stem, notice: 'Question stem was successfully created.' }
        format.json { render action: 'show', status: :created, location: @question_stem }
      else
        format.html { render action: 'new' }
        format.json { render json: @question_stem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_stems/1
  # PATCH/PUT /question_stems/1.json
  def update
    respond_to do |format|
      if @question_stem.update(question_stem_params)
        format.html { redirect_to @question_stem, notice: 'Question stem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @question_stem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_stems/1
  # DELETE /question_stems/1.json
  def destroy
    @question_stem.destroy
    respond_to do |format|
      format.html { redirect_to question_stems_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_stem
      @question_stem = QuestionStem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_stem_params
      params.require(:question_stem).permit(:stem)
    end
end
