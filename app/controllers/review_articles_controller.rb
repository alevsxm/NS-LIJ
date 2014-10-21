class ReviewArticlesController < ApplicationController
  before_action :set_review_article, only: [:show, :edit, :update, :destroy]
  before_action :authenticate

  def index
    @search_params = params[:search]
    @review_articles = ReviewArticle.where('topic ILIKE :value OR summary ILIKE :value', value: "%#{@search_params}%")

    # @search = ReviewArticle.search do
    #   fulltext params[:search]
    # end
    # @review_articles = @search.results
  end

  def show
    @medical_category = MedicalCategory.find(@review_article.medical_category_id)
  end

  def new
    @review_article = ReviewArticle.new
    authorize! :create, @review_article
  end

  def edit
    authorize! :update, @review_article
  end

  def create
    @review_article = ReviewArticle.new(review_article_params)

    respond_to do |format|
      if @review_article.save
        format.html { redirect_to @review_article, notice: 'Review article was successfully created.' }
        format.json { render :show, status: :created, location: @review_article }
      else
        format.html { render :new }
        format.json { render json: @review_article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      authorize! :update, @review_article
      if @review_article.update(review_article_params)
        format.html { redirect_to @review_article, notice: 'Review article was successfully updated.' }
        format.json { render :show, status: :ok, location: @review_article }
      else
        format.html { render :edit }
        format.json { render json: @review_article.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @review_article.destroy
    authorize! :destroy, @review_article
    respond_to do |format|
      format.html { redirect_to review_articles_url, notice: 'Review article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_review_article
      @review_article = ReviewArticle.find(params[:id])
    end

    def review_article_params
      params.require(:review_article).permit(:topic, :summary, :article_link, :medical_category_id)
    end
end
