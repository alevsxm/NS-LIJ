require "rails_helper"

RSpec.describe MedicalCategoriesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/medical_categories").to route_to("medical_categories#index")
    end

    it "routes to #new" do
      expect(:get => "/medical_categories/new").to route_to("medical_categories#new")
    end

    it "routes to #show" do
      expect(:get => "/medical_categories/1").to route_to("medical_categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/medical_categories/1/edit").to route_to("medical_categories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/medical_categories").to route_to("medical_categories#create")
    end

    it "routes to #update" do
      expect(:put => "/medical_categories/1").to route_to("medical_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/medical_categories/1").to route_to("medical_categories#destroy", :id => "1")
    end

  end
end