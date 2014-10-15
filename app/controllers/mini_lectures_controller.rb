class MiniLecturesController < ApplicationController
  before_action :set_mini_lecture, only: [:show, :edit, :update, :destroy]
  before_action :authenticate

  def index
    @mini_lectures = MiniLecture.all
  end

  def show
    @medical_category = MedicalCategory.find(@mini_lecture.medical_category_id)
  end

  def new
    @mini_lecture = MiniLecture.new
    authorize! :create, @mini_lecture
  end

  def edit
    authorize! :edit, @mini_lecture
  end

  def create
    @mini_lecture = MiniLecture.new(mini_lecture_params)

    respond_to do |format|
      if @mini_lecture.save
        format.html { redirect_to @mini_lecture, notice: 'Mini lecture was successfully created.' }
        format.json { render :show, status: :created, location: @mini_lecture }
      else
        format.html { render :new }
        format.json { render json: @mini_lecture.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      authorize! :update, @mini_lecture
      if @mini_lecture.update(mini_lecture_params)
        format.html { redirect_to @mini_lecture, notice: 'Mini lecture was successfully updated.' }
        format.json { render :show, status: :ok, location: @mini_lecture }
      else
        format.html { render :edit }
        format.json { render json: @mini_lecture.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    authorize! :destroy, @mini_lecture
    @mini_lecture.destroy
    respond_to do |format|
      format.html { redirect_to mini_lectures_url, notice: 'Mini lecture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_mini_lecture
      @mini_lecture = MiniLecture.find(params[:id])
    end

    def mini_lecture_params
      params.require(:mini_lecture).permit(:topic, :document, :medical_category_id)
    end
end
