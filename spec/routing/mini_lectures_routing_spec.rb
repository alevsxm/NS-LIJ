require "rails_helper"

RSpec.describe MiniLecturesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mini_lectures").to route_to("mini_lectures#index")
    end

    it "routes to #new" do
      expect(:get => "/mini_lectures/new").to route_to("mini_lectures#new")
    end

    it "routes to #show" do
      expect(:get => "/mini_lectures/1").to route_to("mini_lectures#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mini_lectures/1/edit").to route_to("mini_lectures#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mini_lectures").to route_to("mini_lectures#create")
    end

    it "routes to #update" do
      expect(:put => "/mini_lectures/1").to route_to("mini_lectures#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mini_lectures/1").to route_to("mini_lectures#destroy", :id => "1")
    end

  end
end
