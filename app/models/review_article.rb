class ReviewArticle < ActiveRecord::Base

  belongs_to :medical_category

  # Solr Configuration

  # searchable do
  #   text :topic, :summary
  # end

end
