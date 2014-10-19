class SearchController < ApplicationController

  def search
    @search = Sunspot.search MiniLecture, PicoQuestion, ReviewArticle do
      fulltext params[:search]
    end
    @search_results = @search.results
  end

end
