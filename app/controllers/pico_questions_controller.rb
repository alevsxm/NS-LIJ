class PicoQuestionsController < ApplicationController
  before_action :set_pico_question, only: [:show, :edit, :update, :destroy]
  before_action :authenticate

  def index
    @search_params = params[:search]
    @pico_questions = PicoQuestion.where('question ILIKE :value OR summary ILIKE :value', value: "%#{@search_params}%")

    # Solr Configuration

    # @search = PicoQuestion.search do
    #   fulltext params[:search]
    # end
    # @pico_questions = @search.results
  end

  def show
    @medical_category = MedicalCategory.find(@pico_question.medical_category_id)
  end

  def new
    @pico_question = PicoQuestion.new
    authorize! :create, @pico_question
  end

  def edit
    authorize! :update, @pico_question
  end

  def create
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

  def update
    respond_to do |format|
      authorize! :update, @pico_question
      if @pico_question.update(pico_question_params)
        format.html { redirect_to @pico_question, notice: 'Pico question was successfully updated.' }
        format.json { render :show, status: :ok, location: @pico_question }
      else
        format.html { render :edit }
        format.json { render json: @pico_question.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    authorize! :destroy, @pico_question
    @pico_question.destroy
    respond_to do |format|
      format.html { redirect_to pico_questions_url, notice: 'Pico question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_pico_question
      @pico_question = PicoQuestion.find(params[:id])
    end

    def pico_question_params
      params.require(:pico_question).permit(:question, :summary, :article_link, :medical_category_id)
    end
end
