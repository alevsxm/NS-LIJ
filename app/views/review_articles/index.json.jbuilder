json.array!(@review_articles) do |review_article|
  json.extract! review_article, :id, :topic, :summary, :article_link
  json.url review_article_url(review_article, format: :json)
end
