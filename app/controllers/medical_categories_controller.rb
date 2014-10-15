class MedicalCategoriesController < ApplicationController
  before_action :set_medical_category, only: [:show, :edit, :update, :destroy]
  before_action :authenticate

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

  def show
  end

  def new
    @medical_category = MedicalCategory.new
    authorize! :create, @medical_category
  end

  def edit
    authorize! :edit, @medical_category
  end

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

  def update
    respond_to do |format|
      authorize! :update, @medical_category
      if @medical_category.update(medical_category_params)
        format.html { redirect_to @medical_category, notice: 'Medical category was successfully updated.' }
        format.json { render :show, status: :ok, location: @medical_category }
      else
        format.html { render :edit }
        format.json { render json: @medical_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @medical_category.destroy
    authorize! :destroy, @medical_category
    respond_to do |format|
      format.html { redirect_to medical_categories_url, notice: 'Medical category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_medical_category
      @medical_category = MedicalCategory.find(params[:id])
    end

    def medical_category_params
      params.require(:medical_category).permit(:category_name)
    end
end
