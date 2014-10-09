require 'rails_helper'

RSpec.describe "pico_questions/new", :type => :view do
  before(:each) do
    assign(:pico_question, PicoQuestion.new(
      :question => "MyText",
      :summary => "MyText"
    ))
  end

  it "renders new pico_question form" do
    render

    assert_select "form[action=?][method=?]", pico_questions_path, "post" do

      assert_select "textarea#pico_question_question[name=?]", "pico_question[question]"

      assert_select "textarea#pico_question_summary[name=?]", "pico_question[summary]"
    end
  end
end
