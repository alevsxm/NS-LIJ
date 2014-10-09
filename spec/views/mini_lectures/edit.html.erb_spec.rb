require 'rails_helper'

RSpec.describe "mini_lectures/edit", :type => :view do
  before(:each) do
    @mini_lecture = assign(:mini_lecture, MiniLecture.create!())
  end

  it "renders the edit mini_lecture form" do
    render

    assert_select "form[action=?][method=?]", mini_lecture_path(@mini_lecture), "post" do
    end
  end
end
