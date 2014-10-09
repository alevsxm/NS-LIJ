require 'rails_helper'

RSpec.describe "MiniLectures", :type => :request do
  describe "GET /mini_lectures" do
    it "works! (now write some real specs)" do
      get mini_lectures_path
      expect(response.status).to be(200)
    end
  end
end
