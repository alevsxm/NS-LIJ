require 'rails_helper'

RSpec.describe "pico_questions/edit", :type => :view do
  before(:each) do
    @pico_question = assign(:pico_question, PicoQuestion.create!(
      :question => "MyText",
      :summary => "MyText"
    ))
  end

  it "renders the edit pico_question form" do
    render

    assert_select "form[action=?][method=?]", pico_question_path(@pico_question), "post" do

      assert_select "textarea#pico_question_question[name=?]", "pico_question[question]"

      assert_select "textarea#pico_question_summary[name=?]", "pico_question[summary]"
    end
  end
end
