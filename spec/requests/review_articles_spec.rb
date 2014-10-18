require 'rails_helper'

RSpec.describe "ReviewArticles", :type => :request do
  describe "GET /review_articles" do
    it "works! (now write some real specs)" do
      get review_articles_path
      expect(response.status).to be(200)
    end
  end
end
