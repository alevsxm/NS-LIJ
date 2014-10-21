class SearchController < ApplicationController

  def search
    @search_params = params[:search]
    @mini_lectures = MiniLecture.where('topic ILIKE :value', value: "%#{@search_params}%")
    @pico_questions = PicoQuestion.where('question ILIKE :value OR summary ILIKE :value', value: "%#{@search_params}%")
    @review_articles = ReviewArticle.where('topic ILIKE :value OR summary ILIKE :value', value: "%#{@search_params}%")

    @search_results = @mini_lectures + @pico_questions + @review_articles
    # Solr Configuration

    # @search = Sunspot.search MiniLecture, PicoQuestion, ReviewArticle do
    #   fulltext params[:search]
    # end
    # @search_results = @search.results
  end

end
