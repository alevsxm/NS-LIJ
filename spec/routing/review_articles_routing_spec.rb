require "rails_helper"

RSpec.describe ReviewArticlesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/review_articles").to route_to("review_articles#index")
    end

    it "routes to #new" do
      expect(:get => "/review_articles/new").to route_to("review_articles#new")
    end

    it "routes to #show" do
      expect(:get => "/review_articles/1").to route_to("review_articles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/review_articles/1/edit").to route_to("review_articles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/review_articles").to route_to("review_articles#create")
    end

    it "routes to #update" do
      expect(:put => "/review_articles/1").to route_to("review_articles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/review_articles/1").to route_to("review_articles#destroy", :id => "1")
    end

  end
end
