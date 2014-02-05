class StemsController < ApplicationController
  before_action :set_stem, only: [:show, :edit, :update, :destroy]

  # GET /stems
  # GET /stems.json
  def index
    @stems = Stem.all
  end

  # GET /stems/1
  # GET /stems/1.json
  def show
  end

  # GET /stems/new
  def new
    @stem = Stem.new
    @exams = Exam.all
  end

  # GET /stems/1/edit
  def edit
  end

  # POST /stems
  # POST /stems.json
  def create
    @stem = Stem.new(stem_params)

    respond_to do |format|
      if @stem.save
        format.html { redirect_to @stem, notice: 'Stem was successfully created.' }
        format.json { render action: 'show', status: :created, location: @stem }
      else
        format.html { render action: 'new' }
        format.json { render json: @stem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stems/1
  # PATCH/PUT /stems/1.json
  def update
    respond_to do |format|
      if @stem.update(stem_params)
        format.html { redirect_to @stem, notice: 'Stem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @stem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stems/1
  # DELETE /stems/1.json
  def destroy
    @stem.destroy
    respond_to do |format|
      format.html { redirect_to stems_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stem
      @stem = Stem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stem_params
      params.require(:stem).permit(:content, :exam_id)
    end
end
