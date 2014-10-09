require 'rails_helper'

RSpec.describe "PicoQuestions", :type => :request do
  describe "GET /pico_questions" do
    it "works! (now write some real specs)" do
      get pico_questions_path
      expect(response.status).to be(200)
    end
  end
end
