class ReviewArticlesAddReferenceToCategory < ActiveRecord::Migration
  def change
    change_table :review_articles do |t|
      t.references :medical_category
    end
  end
end
