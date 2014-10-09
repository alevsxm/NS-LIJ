require 'rails_helper'

RSpec.describe "pico_questions/show", :type => :view do
  before(:each) do
    @pico_question = assign(:pico_question, PicoQuestion.create!(
      :question => "MyText",
      :summary => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
