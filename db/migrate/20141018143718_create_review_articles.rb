class CreateReviewArticles < ActiveRecord::Migration
  def change
    create_table :review_articles do |t|
      t.string :topic
      t.text :summary
      t.text :article_link

      t.timestamps
    end
  end
end
