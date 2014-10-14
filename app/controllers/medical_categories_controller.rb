class MedicalCategoriesController < ApplicationController
  before_action :set_medical_category, only: [:show, :edit, :update, :destroy]
  before_action :authenticate

  # GET /medical_categories
  # GET /medical_categories.json
  def index
    @medical_categories = MedicalCategory.all
  end

  def specific_mini_lectures
    @medical_category = MedicalCategory.find(params[:id])
    @mini_lectures = MiniLecture.where({medical_category_id: @medical_category.id})
  end

  def specific_pico_questions
    @medical_category = MedicalCategory.find(params[:id])
    @pico_questions = PicoQuestion.where({medical_category_id: @medical_category.id})
  end

  # GET /medical_categories/1
  # GET /medical_categories/1.json
  def show
  end

  # GET /medical_categories/new
  def new
    @medical_category = MedicalCategory.new
  end

  # GET /medical_categories/1/edit
  def edit
  end

  # POST /medical_categories
  # POST /medical_categories.json
  def create
    @medical_category = MedicalCategory.new(medical_category_params)

    respond_to do |format|
      if @medical_category.save
        format.html { redirect_to @medical_category, notice: 'Medical category was successfully created.' }
        format.json { render :show, status: :created, location: @medical_category }
      else
        format.html { render :new }
        format.json { render json: @medical_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_categories/1
  # PATCH/PUT /medical_categories/1.json
  def update
    respond_to do |format|
      if @medical_category.update(medical_category_params)
        format.html { redirect_to @medical_category, notice: 'Medical category was successfully updated.' }
        format.json { render :show, status: :ok, location: @medical_category }
      else
        format.html { render :edit }
        format.json { render json: @medical_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_categories/1
  # DELETE /medical_categories/1.json
  def destroy
    @medical_category.destroy
    respond_to do |format|
      format.html { redirect_to medical_categories_url, notice: 'Medical category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_category
      @medical_category = MedicalCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_category_params
      params.require(:medical_category).permit(:category_name)
    end
end
