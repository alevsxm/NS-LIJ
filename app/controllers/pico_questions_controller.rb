class PicoQuestionsController < ApplicationController
  before_action :set_pico_question, only: [:show, :edit, :update, :destroy]

  # GET /pico_questions
  # GET /pico_questions.json
  def index
    @pico_questions = PicoQuestion.all
  end

  # GET /pico_questions/1
  # GET /pico_questions/1.json
  def show
    @medical_category = MedicalCategory.find(@pico_question.medical_category_id)
  end

  # GET /pico_questions/new
  def new
    @pico_question = PicoQuestion.new
  end

  # GET /pico_questions/1/edit
  def edit
  end

  # POST /pico_questions
  # POST /pico_questions.json
  def create
    binding.pry
    @pico_question = PicoQuestion.new(pico_question_params)

    respond_to do |format|
      if @pico_question.save
        format.html { redirect_to @pico_question, notice: 'Pico question was successfully created.' }
        format.json { render :show, status: :created, location: @pico_question }
      else
        format.html { render :new }
        format.json { render json: @pico_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pico_questions/1
  # PATCH/PUT /pico_questions/1.json
  def update
    respond_to do |format|
      if @pico_question.update(pico_question_params)
        format.html { redirect_to @pico_question, notice: 'Pico question was successfully updated.' }
        format.json { render :show, status: :ok, location: @pico_question }
      else
        format.html { render :edit }
        format.json { render json: @pico_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pico_questions/1
  # DELETE /pico_questions/1.json
  def destroy
    @pico_question.destroy
    respond_to do |format|
      format.html { redirect_to pico_questions_url, notice: 'Pico question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pico_question
      @pico_question = PicoQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pico_question_params
      params.require(:pico_question).permit(:question, :summary, :article_link, :medical_category_id)
    end
end
