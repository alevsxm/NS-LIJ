require 'rails_helper'

RSpec.describe "MedicalCategories", :type => :request do
  describe "GET /medical_categories" do
    it "works! (now write some real specs)" do
      get medical_categories_path
      expect(response.status).to be(200)
    end
  end
end
