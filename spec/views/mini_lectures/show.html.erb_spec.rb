require 'rails_helper'

RSpec.describe "mini_lectures/show", :type => :view do
  before(:each) do
    @mini_lecture = assign(:mini_lecture, MiniLecture.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
