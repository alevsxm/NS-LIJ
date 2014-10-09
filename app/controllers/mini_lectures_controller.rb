class MiniLecturesController < ApplicationController
  before_action :set_mini_lecture, only: [:show, :edit, :update, :destroy]

  # GET /mini_lectures
  # GET /mini_lectures.json
  def index
    @mini_lectures = MiniLecture.all
  end

  # GET /mini_lectures/1
  # GET /mini_lectures/1.json
  def show
  end

  # GET /mini_lectures/new
  def new
    @mini_lecture = MiniLecture.new
  end

  # GET /mini_lectures/1/edit
  def edit
  end

  # POST /mini_lectures
  # POST /mini_lectures.json
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

  # PATCH/PUT /mini_lectures/1
  # PATCH/PUT /mini_lectures/1.json
  def update
    respond_to do |format|
      if @mini_lecture.update(mini_lecture_params)
        format.html { redirect_to @mini_lecture, notice: 'Mini lecture was successfully updated.' }
        format.json { render :show, status: :ok, location: @mini_lecture }
      else
        format.html { render :edit }
        format.json { render json: @mini_lecture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mini_lectures/1
  # DELETE /mini_lectures/1.json
  def destroy
    @mini_lecture.destroy
    respond_to do |format|
      format.html { redirect_to mini_lectures_url, notice: 'Mini lecture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mini_lecture
      @mini_lecture = MiniLecture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mini_lecture_params
      params[:mini_lecture]
    end
end
