require 'rails_helper'

RSpec.describe "mini_lectures/new", :type => :view do
  before(:each) do
    assign(:mini_lecture, MiniLecture.new())
  end

  it "renders new mini_lecture form" do
    render

    assert_select "form[action=?][method=?]", mini_lectures_path, "post" do
    end
  end
end
