require "rails_helper"

RSpec.describe PicoQuestionsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pico_questions").to route_to("pico_questions#index")
    end

    it "routes to #new" do
      expect(:get => "/pico_questions/new").to route_to("pico_questions#new")
    end

    it "routes to #show" do
      expect(:get => "/pico_questions/1").to route_to("pico_questions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pico_questions/1/edit").to route_to("pico_questions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pico_questions").to route_to("pico_questions#create")
    end

    it "routes to #update" do
      expect(:put => "/pico_questions/1").to route_to("pico_questions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pico_questions/1").to route_to("pico_questions#destroy", :id => "1")
    end

  end
end
