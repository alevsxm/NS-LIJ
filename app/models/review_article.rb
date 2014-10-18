class ReviewArticle < ActiveRecord::Base

  belongs_to :medical_category

  searchable do
    text :topic, :summary
  end

end
