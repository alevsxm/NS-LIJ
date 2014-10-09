require 'rails_helper'

RSpec.describe "mini_lectures/index", :type => :view do
  before(:each) do
    assign(:mini_lectures, [
      MiniLecture.create!(),
      MiniLecture.create!()
    ])
  end

  it "renders a list of mini_lectures" do
    render
  end
end
